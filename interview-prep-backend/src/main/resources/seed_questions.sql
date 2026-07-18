-- seed_questions.sql
-- Auto-generated from js/defaultQuestions.js
-- Uses INSERT OR IGNORE -- safe to run multiple times (idempotent).
-- All rows have is_seed=1 to protect them from API deletion.

BEGIN TRANSACTION;

INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-1', 'Java', 'Java', 'Junior', 'What are the main principles of object-oriented programming in Java?', 'Các nguyên lý chính của lập trình hướng đối tượng (OOP) trong Java là gì?', 'Object-Oriented Programming (OOP) in Java is centered around four foundational concepts that promote modularity, reusability, and maintainability:

1. **Encapsulation (Đóng gói)**
   - **Definition**: The practice of wrapping data (variables) and code acting on the data (methods) together as a single unit, and restricting direct access to some of the object''s components.
   - **Implementation**: Achieved by declaring class variables as `private` and exposing public `getter` and `setter` methods to read and modify the values.
   - **Benefit**: Prevents unauthorized external modification and allows the class to validate data changes.

2. **Inheritance (Kế thừa)**
   - **Definition**: The mechanism where a new class (subclass/child) acquires the properties and behaviors (fields and methods) of an existing class (superclass/parent).
   - **Implementation**: Achieved using the `extends` keyword (for classes) or `implements` (for interfaces).
   - **Benefit**: Enhances code reusability and establishes a natural taxonomy (is-a relationship).

3. **Polymorphism (Đa hình)**
   - **Definition**: The ability of an object or method to take on many forms. It allows a single interface to represent different underlying implementations.
   - **Implementation**:
     - *Compile-time (Static) Polymorphism*: Method Overloading (same method name, different signature).
     - *Runtime (Dynamic) Polymorphism*: Method Overriding (subclass provides a specific implementation of a superclass method).
   - **Benefit**: Allows writing flexible and loosely coupled code.

4. **Abstraction (Trừu tượng)**
   - **Definition**: The concept of hiding the internal implementation details and showing only the essential features of an object to the user.
   - **Implementation**: Achieved using abstract classes (`abstract class`) and interfaces (`interface`).
   - **Benefit**: Reduces complexity and allows developers to focus on what the system does rather than how it does it.

```java
// OOP Demonstration in Java
interface Animal {
    void makeSound(); // Abstraction
}

class Dog implements Animal {
    private String breed; // Encapsulation: hidden field

    public String getBreed() { return breed; }
    public void setBreed(String breed) { this.breed = breed; }

    @Override
    public void makeSound() { // Polymorphism: Overriding
        System.out.println("Woof Woof");
    }
}
```', 'Lập trình hướng đối tượng (OOP) trong Java xoay quanh 4 nguyên lý cốt lõi giúp mã nguồn có tính mô-đun, dễ tái sử dụng và bảo trì:

1. **Tính đóng gói (Encapsulation)**
   - **Định nghĩa**: Là việc che giấu thông tin trạng thái bên trong của đối tượng và chỉ cho phép truy cập thông qua các phương thức được cung cấp công khai (getter/setter).
   - **Cách thực hiện**: Khai báo các thuộc tính (fields) là `private` và cung cấp các phương thức `public getX()` và `setX()`.
   - **Lợi ích**: Bảo vệ tính toàn vẹn của dữ liệu và cho phép kiểm tra tính hợp lệ của dữ liệu trước khi thay đổi.

2. **Tính kế thừa (Inheritance)**
   - **Định nghĩa**: Cho phép một lớp mới (lớp con) kế thừa lại các thuộc tính và hành vi của một lớp đã tồn tại (lớp cha).
   - **Cách thực hiện**: Sử dụng từ khóa `extends` (cho class) hoặc `implements` (cho interface).
   - **Lợi ích**: Tái sử dụng mã nguồn và thiết lập mối quan hệ phân cấp (mối quan hệ "is-a").

3. **Tính đa hình (Polymorphism)**
   - **Định nghĩa**: Cho phép một hành động có thể được thực hiện theo nhiều cách khác nhau. Một đối tượng có thể đóng nhiều vai trò tùy thuộc vào ngữ cảnh.
   - **Cách thực hiện**:
     - *Đa hình lúc biên dịch (Static Polymorphism)*: Nạp chồng phương thức (Method Overloading).
     - *Đa hình lúc chạy (Dynamic Polymorphism)*: Ghi đè phương thức (Method Overriding).
   - **Lợi ích**: Tăng tính linh hoạt và giảm sự phụ thuộc cứng (loose coupling) giữa các thành phần.

4. **Tính trừu tượng (Abstraction)**
   - **Định nghĩa**: Tập trung vào các tính năng thiết yếu của đối tượng mà bỏ qua các chi tiết triển khai cụ thể bên trong.
   - **Cách thực hiện**: Sử dụng lớp trừu tượng (`abstract class`) và giao diện (`interface`).
   - **Lợi ích**: Giảm bớt sự phức tạp và giúp người dùng tập trung vào các chức năng hệ thống cung cấp thay vì cách thức hoạt động chi tiết.

```java
// Minh họa OOP trong Java
interface Animal {
    void makeSound(); // Trừu tượng hóa
}

class Dog implements Animal {
    private String breed; // Đóng gói: thuộc tính ẩn

    public String getBreed() { return breed; }
    public void setBreed(String breed) { this.breed = breed; }

    @Override
    public void makeSound() { // Đa hình: Ghi đè phương thức (Overriding)
        System.out.println("Woof Woof");
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-2', 'Java', 'Java', 'Junior', 'What is the difference between a class and an object?', 'Sự khác biệt giữa class (lớp) và object (đối tượng) là gì?', 'A class and an object are the fundamental building blocks of Object-Oriented Programming, and they differ conceptually and dynamically in memory:

| Criteria | Class | Object |
| :--- | :--- | :--- |
| **Definition** | A blueprint, template, or prototype from which objects are created. It defines static properties and behaviors. | An instance of a class. It is a concrete entity representing a real-world instance. |
| **Existence** | A logical entity. It does not exist physically in memory (except as metadata). | A physical entity. It consumes memory space when instantiated. |
| **Instantiation** | Declared once using the `class` keyword. | Created multiple times from a class using the `new` keyword. |
| **Memory Allocation** | Memory is allocated for class metadata in the **Metaspace** (formerly PermGen) when loaded by the ClassLoader. | Memory is dynamically allocated in the **Heap** region at runtime when the object is instantiated. |

**JVM Memory Perspective**:
- When the JVM starts, it loads the class definition (bytecode, constant pool, method tables) into the **Metaspace**.
- When you execute `Car myCar = new Car();`, the JVM allocates memory for the state variables of `myCar` in the **Heap** and assigns its reference address to the variable `myCar` (stored on the execution stack).

```java
// Blueprint (Class)
class Car {
    String color; // instance variable
    void drive() { System.out.println("Driving..."); }
}

// Instance (Object)
Car myCar = new Car(); // ''myCar'' is a reference on stack to the Object in heap
```', 'Lớp (Class) và Đối tượng (Object) là những khối xây dựng cơ bản của OOP, khác biệt nhau từ định nghĩa lý thuyết cho đến cách phân bổ bộ nhớ:

| Tiêu chí | Lớp (Class) | Đối tượng (Object) |
| :--- | :--- | :--- |
| **Định nghĩa** | Là một bản thiết kế, khuôn mẫu định nghĩa các thuộc tính và hành vi chung cho một nhóm thực thể. | Là một thực thể cụ thể (instance) được tạo ra từ lớp, đại diện cho đối tượng thực tế. |
| **Sự tồn tại** | Là thực thể logic. Không tồn tại vật lý dưới dạng dữ liệu thực tế của đối tượng. | Là thực thể vật lý. Chiếm không gian bộ nhớ khi được khởi tạo. |
| **Khai báo** | Chỉ được khai báo một lần duy nhất bằng từ khóa `class`. | Có thể tạo ra nhiều đối tượng từ một lớp bằng từ khóa `new`. |
| **Phân bổ bộ nhớ** | Bộ nhớ cho siêu dữ liệu (metadata) của lớp được cấp phát ở vùng **Metaspace** khi ClassLoader tải lớp. | Bộ nhớ cho trạng thái của đối tượng được cấp phát trên vùng **Heap** tại thời điểm chạy (runtime). |

**Góc nhìn bộ nhớ JVM**:
- Khi JVM khởi chạy, nó tải định nghĩa lớp (bytecode, constant pool, method table) vào vùng nhớ **Metaspace**.
- Khi bạn thực thi lệnh `Car myCar = new Car();`, JVM sẽ cấp phát vùng nhớ trên **Heap** để lưu trữ trạng thái của đối tượng, sau đó trả về địa chỉ tham chiếu lưu tại biến `myCar` trên **Stack**.

```java
// Khuôn mẫu (Class)
class Car {
    String color; // biến thực thể (instance variable)
    void drive() { System.out.println("Driving..."); }
}

// Thực thể (Object)
Car myCar = new Car(); // ''myCar'' là tham chiếu trên stack trỏ tới đối tượng trên heap
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-3', 'Java', 'Java', 'Mid', 'What is the difference between abstraction and encapsulation?', 'Sự khác biệt giữa trừu tượng hóa (abstraction) và đóng gói (encapsulation) là gì?', 'While both concepts are used for hiding details, they serve different purposes and operate at different levels of software design:

1. **Core Concept**:
   - **Abstraction** is about *hiding complexity by showing only the essential interface* (focuses on **WHAT** an object does).
   - **Encapsulation** is about *hiding the state/data* inside a class to prevent direct outside modification (focuses on **HOW** to secure the internal state).

2. **Mechanism**:
   - **Abstraction** is implemented using **Interfaces** and **Abstract Classes**.
   - **Encapsulation** is implemented using **Access Modifiers** (`private`, `protected`, `public`) combined with **Getters/Setters**.

3. **Design Level**:
   - **Abstraction** is applied at the design phase (outer architecture level).
   - **Encapsulation** is applied at the implementation phase (inner class/module level).

```java
// Abstraction: User only interacts with the remote interface, unaware of signal details
interface RemoteControl {
    void turnOn();
}

// Encapsulation: State is hidden, controlled through validation
class TV implements RemoteControl {
    private int volume = 10; // Encapsulated state

    @Override
    public void turnOn() {
        System.out.println("TV is now ON.");
    }

    public void setVolume(int volume) {
        if (volume >= 0 && volume <= 100) { // Controlled access
            this.volume = volume;
        }
    }
}
```', 'Mặc dù cả hai khái niệm đều dùng để che giấu thông tin, nhưng chúng phục vụ các mục đích khác nhau và nằm ở các cấp độ thiết kế phần mềm khác nhau:

1. **Bản chất**:
   - **Trừu tượng hóa (Abstraction)** tập trung vào việc *ẩn đi các chi tiết triển khai phức tạp* bên trong và chỉ phơi bày các tính năng thiết yếu (tập trung vào câu hỏi **CÁI GÌ** - một đối tượng làm được gì).
   - **Đóng gói (Encapsulation)** tập trung vào việc *ẩn đi dữ liệu/trạng thái* bên trong lớp và ngăn cản sự can thiệp trực tiếp từ bên ngoài (tập trung vào câu hỏi **NHƯ THẾ NÀO** - làm thế nào để bảo mật trạng thái bên trong).

2. **Cách thức thực hiện**:
   - **Abstraction** được thực hiện bằng cách sử dụng **Interfaces** và **Abstract Classes**.
   - **Encapsulation** được thực hiện thông qua các **Access Modifiers** (`private`, `protected`, `public`) kết hợp với các phương thức **Getter/Setter**.

3. **Cấp độ thiết kế**:
   - **Abstraction** thuộc về giai đoạn thiết kế (mức kiến trúc tổng quan bên ngoài).
   - **Encapsulation** thuộc về giai đoạn triển khai code (mức độ tổ chức chi tiết bên trong lớp).

```java
// Trừu tượng hóa: Người dùng chỉ tương tác với Interface RemoteControl, không cần biết chi tiết cấu tạo bên trong
interface RemoteControl {
    void turnOn();
}

// Đóng gói: Trạng thái được ẩn đi, chỉ được thay đổi thông qua kiểm tra logic
class TV implements RemoteControl {
    private int volume = 10; // Thuộc tính được đóng gói

    @Override
    public void turnOn() {
        System.out.println("TV is now ON.");
    }

    public void setVolume(int volume) {
        if (volume >= 0 && volume <= 100) { // Kiểm tra tính hợp lệ trước khi gán
            this.volume = volume;
        }
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-4', 'Java', 'Java', 'Mid', 'What is the difference between inheritance and composition?', 'Sự khác biệt giữa kế thừa (inheritance) và cấu thành (composition) là gì?', 'Inheritance and Composition are two primary techniques for establishing relationships and reusing code in Java:

1. **Relationship Type**:
   - **Inheritance** represents an **"Is-A"** relationship. A `Dog` is an `Animal`.
   - **Composition** represents a **"Has-A"** relationship. A `Car` has an `Engine`.

2. **Coupling**:
   - **Inheritance** is **tightly coupled** (White-box reuse). Changes in the superclass directly affect all subclasses, which can break encapsulation and lead to the *Fragile Base Class* problem.
   - **Composition** is **loosely coupled** (Black-box reuse). Components interact strictly through interfaces, and internal implementations can change without breaking the parent class.

3. **Flexibility**:
   - **Inheritance** is static. A subclass cannot change its superclass at runtime.
   - **Composition** is dynamic. The composed reference can be swapped dynamically at runtime (e.g., via dependency injection or setters).

**Design Principle**: *"Favor composition over inheritance"* is a crucial OOP best practice because it provides better scalability, easier unit testing (mocking dependencies), and cleaner maintenance.

```java
// Inheritance Example (Tightly coupled)
class Vehicle {}
class Truck extends Vehicle {}

// Composition Example (Preferred - Loosely coupled)
class Engine {}
class Car {
    private final Engine engine; // Car has an Engine.
    
    public Car(Engine engine) {
        this.engine = engine;
    }
}
```', 'Kế thừa (Inheritance) và Cấu thành (Composition) là hai kỹ thuật chính để thiết lập mối quan hệ và tái sử dụng mã nguồn trong Java:

1. **Loại mối quan hệ**:
   - **Kế thừa (Inheritance)**: Đại diện cho mối quan hệ **"Is-A"** (Là một). Ví dụ: `Dog` (Chó) là một `Animal` (Động vật).
   - **Cấu thành (Composition)**: Đại diện cho mối quan hệ **"Has-A"** (Có một). Ví dụ: `Car` (Xe hơi) có một `Engine` (Động cơ).

2. **Mức độ phụ thuộc (Coupling)**:
   - **Inheritance**: **Phụ thuộc chặt chẽ (Tight coupling - White-box reuse)**. Mọi thay đổi ở lớp cha trực tiếp ảnh hưởng đến các lớp con. Điều này có thể phá vỡ tính đóng gói và gây ra lỗi *Fragile Base Class*.
   - **Composition**: **Phụ thuộc lỏng lẻo (Loose coupling - Black-box reuse)**. Các lớp tương tác qua lại thông qua API/Interface, cho phép sửa đổi mã nguồn bên trong một lớp mà không làm hỏng lớp chứa nó.

3. **Tính linh hoạt**:
   - **Inheritance**: Mang tính tĩnh (static). Lớp con không thể đổi lớp cha lúc runtime.
   - **Composition**: Mang tính động (dynamic). Đối tượng cấu thành có thể được hoán đổi linh hoạt lúc runtime (ví dụ thông qua Dependency Injection).

**Nguyên lý thiết kế**: *"Favor composition over inheritance"* (Ưu tiên cấu thành hơn kế thừa) là một nguyên tắc thiết kế quan trọng giúp hệ thống dễ mở rộng, dễ viết Unit Test (mocking) và dễ bảo trì hơn.

```java
// Ví dụ về Kế thừa (Phụ thuộc chặt chẽ)
class Vehicle {}
class Truck extends Vehicle {}

// Ví dụ về Cấu thành (Ưu tiên dùng - Phụ thuộc lỏng lẻo)
class Engine {}
class Car {
    private final Engine engine; // Car có một Engine.
    
    public Car(Engine engine) {
        this.engine = engine;
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-5', 'Java', 'Java', 'Junior', 'What is method overloading in Java?', 'Nạp chồng phương thức (method overloading) trong Java là gì?', 'Method overloading is a feature in Java that allows a class to have multiple methods with the **same name**, but **different parameter lists** (signatures). It is the mechanism behind **Compile-time (Static) Polymorphism**.

#### Key Rules of Overloading:
1. **Parameters must differ** in one of the following ways:
   - Number of parameters.
   - Types of parameters.
   - Sequence/order of parameter types (e.g., `(String, int)` vs `(int, String)`).
2. **Return type is NOT part of the method signature** used for overloading. Changing only the return type, while keeping parameters identical, will cause a compilation error.
3. **Access modifiers** or **exceptions thrown** can be different, but they alone do not constitute method overloading.

#### Compiler Overload Resolution:
The compiler determines which method to call at compile-time based on the arguments passed. It performs automatic type promotion (e.g., matching `int` to `double` if no exact `int` match exists) to find the best match.

```java
public class Calculator {
    // 1. Base method
    public int add(int a, int b) { return a + b; }
    
    // 2. Overloaded: Different number of parameters
    public int add(int a, int b, int c) { return a + b + c; }
    
    // 3. Overloaded: Different type of parameters
    public double add(double a, double b) { return a + b; }
}
```', 'Nạp chồng phương thức (Method Overloading) là một tính năng trong Java cho phép một lớp có nhiều phương thức cùng tên nhưng có **danh sách tham số khác nhau** (chữ ký phương thức khác nhau). Đây là hiện tượng **Đa hình tại thời điểm biên dịch (Compile-time/Static Polymorphism)**.

#### Các quy tắc quan trọng của Nạp chồng:
1. **Tham số phải khác nhau** theo một trong các tiêu chí:
   - Số lượng tham số.
   - Kiểu dữ liệu của các tham số.
   - Thứ tự xuất hiện của các kiểu dữ liệu tham số (ví dụ: `(String, int)` khác với `(int, String)`).
2. **Kiểu trả về KHÔNG được dùng để phân biệt** các phương thức nạp chồng. Nếu chỉ khác kiểu trả về còn tham số giống nhau, trình biên dịch sẽ báo lỗi trùng lặp phương thức.
3. **Access modifiers** hoặc các **exceptions** có thể khác nhau, nhưng chúng không đủ để cấu thành nạp chồng phương thức nếu các tham số giống hệt nhau.

#### Trình biên dịch phân giải nạp chồng:
Trình biên dịch quyết định chính xác phương thức nào được gọi ngay tại thời điểm biên dịch dựa trên kiểu đối số truyền vào. Nó thực hiện tự động chuyển đổi kiểu (type promotion, ví dụ ép kiểu từ `int` lên `double` nếu không tìm thấy phương thức nhận tham số `int`) để tìm ra phương thức khớp nhất.

```java
public class Calculator {
    // 1. Phương thức gốc
    public int add(int a, int b) { return a + b; }
    
    // 2. Nạp chồng: Khác nhau về số lượng tham số
    public int add(int a, int b, int c) { return a + b + c; }
    
    // 3. Nạp chồng: Khác nhau về kiểu dữ liệu tham số
    public double add(double a, double b) { return a + b; }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-6', 'Java', 'Java', 'Junior', 'What is method overriding in Java?', 'Ghi đè phương thức (method overriding) trong Java là gì?', 'Method overriding occurs when a subclass provides a specific implementation for a method that is already defined in its superclass. It is the core implementation of **Runtime (Dynamic) Polymorphism**.

#### Key Rules of Overriding:
1. **Method Signature**: Must have the exact same name and parameter list.
2. **Return Type**: Must be the same, or a **covariant return type** (a subclass of the original return type).
3. **Access Modifier**: The overriding method cannot have a *more restrictive* access modifier (e.g., a `protected` method cannot be overridden as package-private or `private`).
4. **Exceptions**: The overriding method cannot throw broader or new checked exceptions, but can throw narrower, fewer checked exceptions, or unchecked exceptions.
5. **Non-overridable methods**: Methods marked as `static`, `final`, or `private` cannot be overridden.

#### JVM Implementation (Dynamic Method Dispatch):
At runtime, the JVM uses the **virtual method table (vtable)** to inspect the actual object type (not the reference type) and invoke the corresponding overridden method.

```java
class Parent {
    protected Object process() throws Exception {
        return "Parent data";
    }
}

class Child extends Parent {
    @Override // Compiler check
    public String process() { // Covariant return: String is a subclass of Object. Less restrictive access: public.
        return "Child data";
    }
}
```', 'Ghi đè phương thức (Method Overriding) xảy ra khi một lớp con định nghĩa lại một phương thức đã tồn tại trong lớp cha với cách triển khai cụ thể hơn. Đây chính là hiện diện của **Đa hình tại thời điểm chạy (Runtime / Dynamic Polymorphism)**.

#### Các quy tắc quan trọng của Ghi đè:
1. **Chữ ký phương thức**: Phải trùng khớp hoàn toàn về tên phương thức và danh sách tham số.
2. **Kiểu trả về**: Phải trùng khớp hoặc là **kiểu trả về đồng biến (covariant return type)** - tức là lớp con của kiểu trả về gốc.
3. **Phạm vi truy cập (Access Modifier)**: Lớp con không được phép thu hẹp quyền truy cập của phương thức ghi đè (ví dụ: lớp cha là `protected` thì lớp con chỉ có thể ghi đè là `protected` hoặc `public`, không được là mặc định hay `private`).
4. **Ngoại lệ (Exceptions)**: Phương thức ghi đè không được khai báo các ngoại lệ checked rộng hơn hoặc mới hơn so với phương thức gốc, nhưng có thể khai báo ít ngoại lệ checked hơn hoặc ném ra ngoại lệ unchecked.
5. **Không thể ghi đè**: Các phương thức được đánh dấu là `static`, `final`, hoặc `private` không thể bị ghi đè.

#### Cách JVM xử lý (Dynamic Method Dispatch):
Tại thời điểm chạy, JVM sử dụng bảng phương thức ảo (**vtable**) để kiểm tra kiểu thực tế của đối tượng (chứ không phải kiểu tham chiếu) và gọi phiên bản ghi đè thích hợp nhất.

```java
class Parent {
    protected Object process() throws Exception {
        return "Dữ liệu lớp cha";
    }
}

class Child extends Parent {
    @Override // Trình biên dịch kiểm tra tính hợp lệ
    public String process() { // Kiểu trả về đồng biến: String kế thừa Object. Quyền truy cập rộng hơn: public.
        return "Dữ liệu lớp con";
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-7', 'Java', 'Java', 'Mid', 'What is the difference between an interface and an abstract class?', 'Sự khác biệt giữa interface và abstract class là gì?', 'The choice between abstract classes and interfaces has evolved significantly, especially with newer Java releases:

| Feature | Abstract Class | Interface |
| :--- | :--- | :--- |
| **Multiple Inheritance** | A class can extend only one abstract class. | A class can implement multiple interfaces. |
| **State / Fields** | Can contain instance fields (stateful) with any access modifiers. | Can only contain `public static final` constants. |
| **Constructors** | Can have constructors (invoked via subclasses via `super()`). | Cannot have constructors. |
| **Access Modifiers** | Methods can be `private`, `protected`, `public`, etc. | Methods are implicitly `public` (private methods allowed since Java 9 for helper utilities). |
| **Default Methods** | Abstract by default, but can have implemented methods. | Can contain implemented methods via `default` and `static` modifiers (since Java 8). |

#### Guidelines on when to use:
- Use an **Abstract Class** when you want to share common state (instance variables) and code among closely related classes (establishing an "is-a" hierarchy).
- Use an **Interface** to define a contract or common behavior that can be implemented by completely unrelated classes (establishing a "can-do" capability).

```java
// Abstract Class (Shared State)
abstract class DatabaseConnector {
    protected String connectionString; // Instance variable
    public DatabaseConnector(String conn) { this.connectionString = conn; }
    abstract void connect();
}

// Interface (Shared Behavior Contract)
interface Auditable {
    default void logActivity(String msg) {
        System.out.println("LOG: " + msg);
    }
}
```', 'Sự khác biệt giữa lớp trừu tượng (abstract class) và giao diện (interface) đã có nhiều thay đổi qua các phiên bản Java mới:

| Đặc tính | Lớp trừu tượng (Abstract Class) | Giao diện (Interface) |
| :--- | :--- | :--- |
| **Đa kế thừa** | Một lớp chỉ có thể kế thừa từ một lớp trừu tượng duy nhất. | Một lớp có thể triển khai (implement) nhiều interface. |
| **Trạng thái / Thuộc tính** | Có thể chứa các thuộc tính non-static/non-final với bất kỳ phạm vi truy cập nào. | Chỉ có thể chứa các hằng số `public static final`. |
| **Phương thức khởi tạo** | Có constructor (được gọi từ lớp con qua `super()`). | Không thể có constructor. |
| **Phạm vi truy cập** | Phương thức có thể dùng mọi modifier (`private`, `protected`, `public`...). | Mặc định các phương thức là `public` (cho phép `private` helper method từ Java 9). |
| **Phương thức có triển khai** | Có thể có cả phương thức trừu tượng và phương thức đã triển khai. | Có thể triển khai phương thức thông qua từ khóa `default` hoặc `static` (từ Java 8 trở đi). |

#### Hướng dẫn lựa chọn sử dụng:
- Sử dụng **Abstract Class** khi muốn chia sẻ trạng thái chung (biến instance) và mã nguồn giữa các lớp có mối quan hệ họ hàng mật thiết (quan hệ "is-a").
- Sử dụng **Interface** khi muốn định nghĩa một hợp đồng hành vi chung cho các lớp hoàn toàn không liên quan đến nhau thực thi (thiết lập năng lực "can-do").

```java
// Lớp trừu tượng (Chia sẻ trạng thái)
abstract class DatabaseConnector {
    protected String connectionString; // Biến thực thể
    public DatabaseConnector(String conn) { this.connectionString = conn; }
    abstract void connect();
}

// Giao diện (Hợp đồng hành vi chung)
interface Auditable {
    default void logActivity(String msg) {
        System.out.println("LOG: " + msg);
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-8', 'Java', 'Java', 'Junior', 'What is the difference between == and equals() in Java?', 'Sự khác biệt giữa toán tử == và phương thức equals() trong Java là gì?', 'The fundamental difference is whether you are comparing memory addresses (identity) or logical content (equality):

1. **The `==` Operator**:
   - For **primitives**, it compares their actual value (e.g., `5 == 5`).
   - For **objects**, it compares their memory references (reference equality). It checks if both variables point to the exact same memory location on the heap.

2. **The `equals()` Method**:
   - It is a method defined in `java.lang.Object`.
   - By default, the base implementation in `Object` simply uses the `==` operator (`public boolean equals(Object obj) { return (this == obj); }`).
   - Classes can override `equals()` to implement **logical equivalence** (e.g., comparing field values of two different objects). Examples: `String`, `Integer`, `Double`, `LocalDate` override it.

#### The String Pool Scenario:
```java
String s1 = "hello";
String s2 = "hello";
String s3 = new String("hello");

System.out.println(s1 == s2);      // true (points to same object in String Constant Pool)
System.out.println(s1 == s3);      // false (s3 is a new object on the heap)
System.out.println(s1.equals(s3)); // true (compares character content)
```', 'Sự khác biệt cơ bản nằm ở việc so sánh địa chỉ ô nhớ (identity) hay so sánh giá trị logic bên trong của đối tượng (equality):

1. **Toán tử `==`**:
   - Đối với **kiểu dữ liệu nguyên thủy (primitive types)**: So sánh trực tiếp giá trị của chúng (ví dụ: `5 == 5`).
   - Đối với **kiểu đối tượng (object types)**: So sánh tham chiếu bộ nhớ. Nó kiểm tra xem hai biến có đang trỏ cùng vào một địa chỉ ô nhớ trên Heap hay không.

2. **Phương thức `equals()`**:
   - Là một phương thức được định nghĩa trong lớp gốc `java.lang.Object`.
   - Mặc định, triển khai của `Object` chỉ đơn thuần sử dụng toán tử `==` để so sánh.
   - Các lớp có thể ghi đè (`override`) phương thức này để thực hiện việc so sánh **bằng nhau về mặt giá trị/logic** (ví dụ so sánh các trường dữ liệu của đối tượng). Các lớp như `String`, `Integer`, `Double` đã ghi đè sẵn phương thức này.

#### Ví dụ liên quan đến String Constant Pool:
```java
String s1 = "hello";
String s2 = "hello";
String s3 = new String("hello");

System.out.println(s1 == s2);      // true (trỏ chung vào một vùng nhớ trong String Pool)
System.out.println(s1 == s3);      // false (s3 được tạo mới hoàn toàn trên Heap)
System.out.println(s1.equals(s3)); // true (so sánh chuỗi ký tự bên trong)
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-9', 'Java', 'Java', 'Mid', 'Why should hashCode() be overridden when equals() is overridden?', 'Tại sao phải ghi đè hashCode() khi ghi đè equals()?', 'In Java, there is a strict API contract between `equals()` and `hashCode()` defined in `java.lang.Object`. Violating this contract breaks the behavior of hash-based collections like `HashMap`, `HashSet`, and `Hashtable`.

#### The Contract:
1. If two objects are equal according to `equals(Object)`, calling `hashCode()` on each must return the **same integer value**.
2. If two objects are unequal, their hashcodes **do not need** to be distinct (though distinct values optimize performance by reducing hash collisions).

#### Consequence of Violation:
If you override `equals()` but not `hashCode()`, two objects with identical fields will be considered equal by `equals()`, but they will have different hashcodes (based on their default memory addresses).
- When put into a `HashMap`, the key-value pair is placed in a bucket based on the key''s hashcode.
- When retrieving the value using an equal key, `HashMap` first computes the hashcode. Since it differs, it searches the wrong bucket and returns `null`. This results in data loss or duplicate keys inside a `HashSet`.

```java
class User {
    private String id;
    public User(String id) { this.id = id; }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        return this.id.equals(((User) o).id);
    }
    // Missing hashCode() override!
}

// Bug Demo:
Map<User, String> map = new HashMap<>();
map.put(new User("1"), "Admin");
System.out.println(map.get(new User("1"))); // Prints: null (should be "Admin")
```', 'Trong Java, có một giao ước nghiêm ngặt (API contract) giữa `equals()` và `hashCode()` được quy định trong lớp `java.lang.Object`. Vi phạm hợp ước này sẽ làm sai lệch cơ chế hoạt động của các cấu trúc dữ liệu dạng bảng băm như `HashMap`, `HashSet`, `Hashtable`.

#### Giao ước (The Contract):
1. Nếu hai đối tượng được xác định là bằng nhau qua `equals(Object)`, thì việc gọi `hashCode()` trên cả hai đối tượng này **bắt buộc phải trả về cùng một số nguyên**.
2. Nếu hai đối tượng không bằng nhau, mã băm (hashcode) của chúng **không nhất thiết** phải khác nhau (nhưng thiết kế khác nhau sẽ tối ưu hóa hiệu suất băm bằng cách tránh đụng độ hash collision).

#### Hậu quả khi vi phạm:
Nếu ghi đè `equals()` mà không ghi đè `hashCode()`, hai đối tượng có nội dung giống hệt nhau sẽ được coi là bằng nhau, nhưng chúng lại trả về hai mã băm khác nhau (do sử dụng mã băm mặc định dựa trên địa chỉ bộ nhớ).
- Khi đưa vào `HashMap`, cặp key-value sẽ được đưa vào một bucket tính toán dựa trên `hashCode` của Key.
- Khi lấy dữ liệu ra bằng một đối tượng Key có giá trị tương đương, `HashMap` sẽ tính toán mã băm của đối tượng đó trước. Do mã băm khác nhau, nó sẽ tìm kiếm ở sai bucket và trả về `null`. Điều này dẫn đến thất lạc dữ liệu hoặc tạo ra các phần tử trùng lặp trong `HashSet`.

```java
class User {
    private String id;
    public User(String id) { this.id = id; }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        return this.id.equals(((User) o).id);
    }
    // Thiếu ghi đè hashCode()!
}

// Minh họa lỗi:
Map<User, String> map = new HashMap<>();
map.put(new User("1"), "Admin");
System.out.println(map.get(new User("1"))); // In ra: null (đúng ra phải là "Admin")
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-10', 'Java', 'Java', 'Mid', 'What is the difference between checked and unchecked exceptions?', 'Sự khác biệt giữa checked exception và unchecked exception là gì?', 'Java exceptions are categorized into checked and unchecked, which dictate how the compiler and developers handle runtime failures:

1. **Checked Exceptions**:
   - **Inheritance**: Extends `java.lang.Exception` (but not `java.lang.RuntimeException`).
   - **Compilation**: Checked at compile-time. The compiler enforces that the caller must handle them (via `try-catch`) or declare them in the method signature (via `throws`).
   - **Scenario**: Represent anticipated external failures that are recoverable (e.g., file not found, network timeouts, database connection errors).
   - **Examples**: `IOException`, `SQLException`, `ClassNotFoundException`.

2. **Unchecked Exceptions (Runtime Exceptions)**:
   - **Inheritance**: Extends `java.lang.RuntimeException` or `java.lang.Error`.
   - **Compilation**: Not checked at compile-time. The compiler does not force you to handle or declare them.
   - **Scenario**: Represent programmer errors, bugs, or unrecoverable system failures.
   - **Examples**: `NullPointerException`, `ArrayIndexOutOfBoundsException`, `IllegalArgumentException`, `OutOfMemoryError`.

```java
// Checked: Compiler forces handling
public void readDatabase() throws SQLException {
    throw new SQLException("Connection failed");
}

// Unchecked: Compiler does not force handling
public void setAge(int age) {
    if (age < 0) {
        throw new IllegalArgumentException("Age cannot be negative");
    }
}
```', 'Ngoại lệ trong Java được chia thành checked và unchecked, quyết định cách thức trình biên dịch và lập trình viên xử lý các sự cố xảy ra tại runtime:

1. **Checked Exceptions (Ngoại lệ được kiểm tra)**:
   - **Kế thừa**: Kế thừa trực tiếp từ `java.lang.Exception` (trừ `java.lang.RuntimeException`).
   - **Biên dịch**: Được kiểm tra nghiêm ngặt ngay tại thời điểm biên dịch. Trình biên dịch bắt buộc lập trình viên phải xử lý (bằng `try-catch`) hoặc khai báo ném ra ngoài (bằng `throws`).
   - **Kịch bản**: Thường đại diện cho các lỗi khách quan ngoài tầm kiểm soát của ứng dụng và có khả năng phục hồi (ví dụ: mất kết nối DB, không tìm thấy file).
   - **Ví dụ**: `IOException`, `SQLException`, `ClassNotFoundException`.

2. **Unchecked Exceptions (Ngoại lệ không được kiểm tra)**:
   - **Kế thừa**: Kế thừa từ `java.lang.RuntimeException` hoặc các lỗi hệ thống nghiêm trọng kế thừa từ `java.lang.Error`.
   - **Biên dịch**: Không bị kiểm tra tại thời điểm biên dịch. Bạn không bắt buộc phải khai báo hay bắt ngoại lệ này bằng code.
   - **Kịch bản**: Đại diện cho các lỗi logic lập trình, bugs hoặc các lỗi hệ thống không thể phục hồi được.
   - **Ví dụ**: `NullPointerException`, `ArrayIndexOutOfBoundsException`, `IllegalArgumentException`, `OutOfMemoryError`.

```java
// Checked: Trình biên dịch bắt buộc phải xử lý
public void readDatabase() throws SQLException {
    throw new SQLException("Kết nối thất bại");
}

// Unchecked: Trình biên dịch không bắt buộc phải xử lý
public void setAge(int age) {
    if (age < 0) {
        throw new IllegalArgumentException("Tuổi không được âm");
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-11', 'Java', 'Java', 'Junior', 'What is the difference between throw and throws?', 'Sự khác biệt giữa từ khóa throw và throws là gì?', 'The keywords `throw` and `throws` are related to exception handling but serve entirely different functions:

| Criteria | `throw` | `throws` |
| :--- | :--- | :--- |
| **Purpose** | Used to explicitly initiate or throw a single specific exception. | Used to declare which exceptions a method might throw back to its caller. |
| **Location** | Used inside method bodies/blocks. | Used in the method signature. |
| **Syntax** | Followed by an instance of an exception subclass (e.g., `throw new Exception();`). | Followed by exception class names (e.g., `throws IOException, SQLException`). |
| **Quantity** | Can only throw one exception object at a time. | Can declare multiple comma-separated exception classes. |

```java
// Example demonstrating both
public void processFile(String path) throws IOException { // ''throws'' declares potential exceptions
    if (path == null) {
        throw new IllegalArgumentException("Path cannot be null"); // ''throw'' triggers instance
    }
    // method body
}
```', 'Hai từ khóa `throw` và `throws` đều liên quan đến cơ chế xử lý ngoại lệ nhưng đảm nhiệm các vai trò khác nhau hoàn toàn:

| Tiêu chí | `throw` | `throws` |
| :--- | :--- | :--- |
| **Mục đích** | Dùng để chủ động ném ra một đối tượng ngoại lệ cụ thể tại một thời điểm. | Dùng để khai báo các ngoại lệ mà phương thức có khả năng ném ra cho lớp gọi nó xử lý. |
| **Vị trí sử dụng** | Nằm bên trong thân của phương thức hoặc khối lệnh. | Nằm ở dòng chữ ký phương thức (method signature). |
| **Cú pháp** | Theo sau bởi một thực thể (instance) của exception (ví dụ: `throw new Exception();`). | Theo sau bởi tên của các lớp exception (ví dụ: `throws IOException, SQLException`). |
| **Số lượng** | Chỉ ném ra duy nhất một đối tượng ngoại lệ trong một câu lệnh thực thi. | Có thể khai báo nhiều lớp ngoại lệ khác nhau, phân tách nhau bởi dấu phẩy. |

```java
// Ví dụ minh họa cả hai từ khóa
public void processFile(String path) throws IOException { // ''throws'' khai báo các ngoại lệ có thể xảy ra
    if (path == null) {
        throw new IllegalArgumentException("Đường dẫn không được null"); // ''throw'' ném ra đối tượng ngoại lệ cụ thể
    }
    // Thân phương thức
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-12', 'Java', 'Java', 'Junior', 'What is the purpose of the finally block?', 'Mục đích của khối finally là gì?', 'The `finally` block in Java is used in conjunction with a `try-catch` block. Its primary purpose is to ensure that a section of code is executed regardless of whether an exception is thrown or caught.

### Key Characteristics & Behaviors:
1. **Guaranteed Execution**: The code inside the `finally` block will run after the execution of the `try` and `catch` blocks. The only exceptions where `finally` does not execute are:
   - If the JVM terminates (e.g., calling `System.exit(0)`).
   - If the thread is interrupted or killed.
   - If a catastrophic hardware or OS crash occurs.
2. **Resource Cleanup**: It is primarily used to prevent resource leaks by closing resources such as:
   - File input/output streams.
   - Database connections (`java.sql.Connection`).
   - Network sockets.
3. **Execution with Returns**: If the `try` or `catch` block contains a `return` statement, the `finally` block is still executed before the method returns. If the `finally` block also contains a `return` statement, it will override the return value from the `try` or `catch` block.

### Example Code:
```java
public String readFile() {
    BufferedReader reader = null;
    try {
        reader = new BufferedReader(new FileReader("file.txt"));
        return reader.readLine();
    } catch (IOException e) {
        System.err.println("Error reading file: " + e.getMessage());
        return "error";
    } finally {
        System.out.println("Executing finally block...");
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException e) {
                System.err.println("Failed to close reader: " + e.getMessage());
            }
        }
    }
}
```

> [!NOTE]
> Since Java 7, **try-with-resources** is the preferred way to clean up resources that implement `AutoCloseable`, reducing the need for explicit `finally` blocks for closing resources.', 'Khối `finally` trong Java được sử dụng kết hợp với khối `try-catch`. Mục đích chính của nó là đảm bảo một đoạn mã nguồn sẽ luôn được thực thi, bất kể có ngoại lệ (exception) nào xảy ra hoặc được bắt giữ hay không.

### Đặc điểm và Hành vi Chính:
1. **Đảm bảo luôn thực thi**: Mã bên trong khối `finally` sẽ chạy sau khi các khối `try` và `catch` hoàn thành. Các trường hợp hiếm hoi mà `finally` không chạy bao gồm:
   - Khi JVM bị tắt đột ngột (ví dụ: gọi `System.exit(0)`).
   - Khi luồng (thread) bị crash hoặc bị hủy.
   - Khi có sự cố phần cứng hoặc hệ điều hành nghiêm trọng.
2. **Giải phóng tài nguyên (Resource Cleanup)**: Khối này chủ yếu dùng để đóng các tài nguyên kết nối nhằm tránh rò rỉ bộ nhớ/tài nguyên (resource leaks) như:
   - Luồng đọc/ghi tệp (File streams).
   - Kết nối cơ sở dữ liệu (`java.sql.Connection`).
   - Sockets mạng.
3. **Tương tác với câu lệnh Return**: Nếu khối `try` hoặc `catch` chứa câu lệnh `return`, khối `finally` vẫn sẽ được thực thi trước khi phương thức thực sự trả về kết quả. Nếu khối `finally` cũng chứa câu lệnh `return`, giá trị trả về tại đây sẽ ghi đè lên các giá trị trả về trước đó.

### Ví dụ minh họa:
```java
public String readFile() {
    BufferedReader reader = null;
    try {
        reader = new BufferedReader(new FileReader("file.txt"));
        return reader.readLine();
    } catch (IOException e) {
        System.err.println("Lỗi đọc file: " + e.getMessage());
        return "error";
    } finally {
        System.out.println("Đang chạy khối finally...");
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException e) {
                System.err.println("Không thể đóng reader: " + e.getMessage());
            }
        }
    }
}
```

> [!NOTE]
> Từ Java 7, cơ chế **try-with-resources** được khuyến nghị sử dụng để dọn dẹp các tài nguyên triển khai interface `AutoCloseable`, giúp hạn chế việc phải viết các khối `finally` dài dòng chỉ để đóng tài nguyên.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-13', 'Java', 'Java', 'Junior', 'What is the difference between String, StringBuilder, and StringBuffer?', 'Sự khác biệt giữa String, StringBuilder và StringBuffer là gì?', 'In Java, `String`, `StringBuilder`, and `StringBuffer` are used to represent sequences of characters. However, they differ significantly in terms of mutability, thread safety, and performance.

### Comparison Table:

| Feature | String | StringBuilder | StringBuffer |
| :--- | :--- | :--- | :--- |
| **Mutability** | Immutable (Bất biến) | Mutable (Khả biến) | Mutable (Khả biến) |
| **Thread Safety** | Thread-safe (due to immutability) | Not thread-safe | Thread-safe (Synchronized methods) |
| **Performance** | Slowest for modifications | Fastest for modifications | Slower than StringBuilder (Lock overhead) |
| **Storage** | String Pool / Heap | Heap | Heap |

### Detailed Breakdown:

1. **String**:
   - Objects of type `String` are immutable. Once created, their values cannot be changed.
   - Any manipulation (like concatenation or replacement) creates a new `String` object in the heap or String Pool.
   - Best used when the character sequence will not change frequently, or for security-sensitive keys (like URLs, usernames).

2. **StringBuilder** (Introduced in Java 5):
   - A mutable sequence of characters. It allows modifying the content without creating new objects.
   - It is **not synchronized** (not thread-safe).
   - Best used for single-threaded environments where frequent string manipulation (e.g., inside loops) is needed.

3. **StringBuffer**:
   - Similar to `StringBuilder` as it is a mutable sequence of characters.
   - All its main methods are **synchronized**, making it thread-safe.
   - Slower than `StringBuilder` due to the overhead of acquiring and releasing thread locks.
   - Best used in multi-threaded environments where multiple threads access and modify the same string instance.

### Example Code:
```java
// String: Creates new objects in memory
String str = "Hello";
str += " World"; // A new String object is created

// StringBuilder: Modifies the same object in-place (Fastest, single-thread)
StringBuilder sb = new StringBuilder("Hello");
sb.append(" World");

// StringBuffer: Modifies the same object in-place (Thread-safe, multi-thread)
StringBuffer sbf = new StringBuffer("Hello");
sbf.append(" World");
```', 'Trong Java, `String`, `StringBuilder` và `StringBuffer` đều được dùng để đại diện cho chuỗi ký tự. Tuy nhiên, chúng có sự khác biệt rõ rệt về tính bất biến, an toàn đa luồng và hiệu năng.

### Bảng so sánh chi tiết:

| Đặc tính | String | StringBuilder | StringBuffer |
| :--- | :--- | :--- | :--- |
| **Tính bất biến** | Bất biến (Immutable) | Khả biến (Mutable) | Khả biến (Mutable) |
| **An toàn luồng** | An toàn (do bất biến) | Không an toàn | An toàn (Các phương thức được đồng bộ) |
| **Hiệu năng** | Chậm nhất khi sửa chuỗi | Nhanh nhất khi sửa chuỗi | Chậm hơn StringBuilder (Do chi phí Lock) |
| **Bộ nhớ** | String Pool / Heap | Heap | Heap |

### Chi tiết từng lớp:

1. **String**:
   - Các đối tượng `String` là bất biến. Khi đã được khởi tạo, nội dung chuỗi không thể thay đổi.
   - Mọi thao tác biến đổi chuỗi (như nối chuỗi, cắt chuỗi) sẽ tạo ra một đối tượng `String` mới hoàn toàn trong bộ nhớ Heap hoặc String Pool.
   - Thích hợp khi nội dung chuỗi ít thay đổi, hoặc dùng làm khóa bảo mật (như URL, username, database connection).

2. **StringBuilder** (Từ Java 5):
   - Đại diện cho chuỗi ký tự có thể thay đổi (mutable). Cho phép chỉnh sửa nội dung trực tiếp trên vùng nhớ hiện tại mà không tạo đối tượng mới.
   - **Không đồng bộ** (không an toàn đa luồng).
   - Thích hợp nhất cho môi trường đơn luồng nơi cần thực hiện nhiều thao tác nối chuỗi (ví dụ: trong vòng lặp).

3. **StringBuffer**:
   - Tương tự như `StringBuilder`, là chuỗi ký tự khả biến.
   - Các phương thức chính của nó được **đồng bộ hóa (synchronized)**, đảm bảo an toàn đa luồng.
   - Hiệu năng chậm hơn `StringBuilder` do chi phí kiểm tra và khóa luồng.
   - Thích hợp khi nhiều luồng cùng thao tác và chỉnh sửa trên một chuỗi dùng chung.

### Ví dụ minh họa:
```java
// String: Tạo ra đối tượng mới trong bộ nhớ
String str = "Hello";
str += " World"; // Một đối tượng String mới được tạo ra

// StringBuilder: Chỉnh sửa trực tiếp (Nhanh nhất, đơn luồng)
StringBuilder sb = new StringBuilder("Hello");
sb.append(" World");

// StringBuffer: Chỉnh sửa trực tiếp (An toàn đa luồng)
StringBuffer sbf = new StringBuffer("Hello");
sbf.append(" World");
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-14', 'Java', 'Java', 'Mid', 'Why is String immutable in Java?', 'Tại sao String lại bất biến (immutable) trong Java?', '`String` is designed to be immutable in Java for several key reasons spanning memory efficiency, security, thread safety, and performance.

### Reasons for Immutability:

1. **String Pool (Memory Optimization)**:
   - Java uses a special memory region in the Heap called the **String Pool**.
   - When a string literal is created, the JVM checks the String Pool first. If it exists, the existing reference is returned.
   - If Strings were mutable, changing the value of one String variable would silently change the values of all other variables referencing that same memory address.
   
2. **Security**:
   - Strings are extensively used as parameters in critical application areas, such as database connection URLs, file paths, usernames, passwords, and ClassLoader parameters.
   - If Strings were mutable, an attacker could bypass validation checks by changing the string value after it has been verified but before it is used by the system (known as Time-of-Check to Time-of-Use vulnerability).

3. **Thread Safety**:
   - Immutable objects are inherently thread-safe. Multiple threads can access and share the same String instance simultaneously without the need for synchronization.
   - This eliminates race conditions and potential concurrency bugs related to string sharing.

4. **HashCode Caching (Performance)**:
   - Since Strings are immutable, their hash code (`hashCode()`) is guaranteed not to change.
   - Java caches the hash code value at the time of String creation (stored in the private field `hash`).
   - This makes Strings exceptionally fast when used as keys in hash-based collections like `HashMap`, `HashSet`, or `Hashtable`, as the hash code doesn''t need to be recomputed for every lookup or insertion.

5. **Class Loading**:
   - The Java ClassLoader uses Strings to load classes. If String were mutable, a malicious class name could be altered midway, causing the wrong class to load, which compromises JVM stability and security.', '`String` được thiết kế bất biến trong Java vì một số lý do quan trọng liên quan đến tối ưu bộ nhớ, bảo mật, an toàn đa luồng và hiệu năng.

### Các lý do chính dẫn đến tính bất biến:

1. **String Pool (Tối ưu hóa bộ nhớ)**:
   - Java sử dụng một phân vùng bộ nhớ đặc biệt trong Heap gọi là **String Pool**.
   - Khi một chuỗi ký tự dạng literal được tạo ra, JVM kiểm tra String Pool trước. Nếu chuỗi đã tồn tại, tham chiếu cũ sẽ được trả về thay vì tạo mới.
   - Nếu String khả biến, việc thay đổi giá trị của một biến String sẽ vô tình làm thay đổi giá trị của tất cả các biến khác đang cùng trỏ tới địa chỉ ô nhớ đó.
   
2. **Bảo mật (Security)**:
   - String được sử dụng rộng rãi làm tham số trong các vùng bảo mật nhạy cảm như URL kết nối cơ sở dữ liệu, đường dẫn file, tài khoản, mật khẩu, và tham số nạp lớp (ClassLoader).
   - Nếu String khả biến, kẻ tấn công có thể vượt qua các kiểm tra bảo mật bằng cách thay đổi nội dung chuỗi ngay sau khi đã xác thực nhưng trước khi thực thi hệ thống (lỗi Time-of-Check to Time-of-Use).

3. **An toàn đa luồng (Thread Safety)**:
   - Các đối tượng bất biến vốn dĩ an toàn đa luồng. Nhiều luồng có thể truy cập và chia sẻ cùng một thực thể String mà không cần đồng bộ hóa (synchronization).
   - Điều này loại bỏ hoàn toàn hiện tượng tranh chấp dữ liệu (race conditions) hoặc các lỗi luồng liên quan đến chia sẻ chuỗi.

4. **Lưu bộ đệm HashCode (Hiệu năng)**:
   - Do String bất biến, mã băm (`hashCode()`) của nó được đảm bảo không bao giờ thay đổi.
   - Java sẽ tính toán mã băm một lần duy nhất lúc khởi tạo và lưu trữ trong thuộc tính private `hash`.
   - Điều này giúp String hoạt động cực kỳ nhanh khi làm key trong các bảng băm như `HashMap`, `HashSet hay `Hashtable`, vì không cần tính toán lại mã băm cho mỗi lần tìm kiếm hay chèn phần tử.

5. **Nạp Lớp (Class Loading)**:
   - Bộ nạp lớp ClassLoader sử dụng String để tìm và nạp các lớp Java. Nếu String là khả biến, tên lớp có thể bị sửa đổi trên đường đi, dẫn đến nạp nhầm lớp độc hại, làm ảnh hưởng nghiêm trọng đến tính ổn định của JVM.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-15', 'Java', 'Java', 'Junior', 'What is the difference between an ArrayList and a LinkedList?', 'Sự khác biệt giữa ArrayList và LinkedList là gì?', '`ArrayList` and `LinkedList` both implement the `List` interface in Java, but they use different underlying data structures, resulting in distinct performance characteristics for read, write, and delete operations.

### Key Differences:

| Feature | ArrayList | LinkedList |
| :--- | :--- | :--- |
| **Data Structure** | Dynamic (resizable) Array | Doubly Linked List |
| **Get (Access)** | $O(1)$ (Random access via index) | $O(n)$ (Must traverse from start/end) |
| **Add (At End)** | $O(1)$ amortized ($O(n)$ when resizing) | $O(1)$ |
| **Add / Remove (Middle)**| $O(n)$ (Shifting elements is required) | $O(n)$ (Find index: $O(n)$, Insert/Delete node: $O(1)$) |
| **Add / Remove (First)** | $O(n)$ (Must shift all elements) | $O(1)$ |
| **Memory Overhead** | Low (Stores elements in a contiguous block) | High (Each node requires pointer references) |

### Detailed Explanation:

1. **ArrayList**:
   - Internally backed by an array. When it fills up, a new, larger array (typically 1.5x the size) is allocated, and the old elements are copied over.
   - Offers $O(1)$ access time since elements are stored contiguously in memory and can be accessed directly using an index.
   - Inserting or deleting elements (except at the end) requires shifting elements in memory, which is an $O(n)$ operation.

2. **LinkedList**:
   - Each element is stored in a `Node` object. Each node holds the data and two pointers: one pointing to the `next` node and one pointing to the `prev` node.
   - Accessing elements takes $O(n)$ because it requires traversing the list from head or tail to reach the target index.
   - Adding or removing elements at the ends (head/tail) is extremely fast $O(1)$. If inserting in the middle, it takes $O(n)$ to locate the node first, but the insertion itself is just changing pointers ($O(1)$).
   - Higher memory footprint because it has to allocate extra space for the forward and backward pointers of each element.

### Summary of Use Cases:
- Use **ArrayList** when the application is read-heavy and requires fast random access, and when items are mostly added or removed from the end of the collection.
- Use **LinkedList** when the application requires frequent insertions or deletions at the beginning or end of the collection (e.g., implementing a Queue or Stack).', '`ArrayList` và `LinkedList` đều triển khai interface `List` trong Java, nhưng chúng sử dụng cấu trúc dữ liệu nền tảng khác nhau, dẫn đến đặc điểm hiệu năng khác nhau đối với các thao tác đọc, chèn và xóa.

### Các điểm khác biệt chính:

| Đặc tính | ArrayList | LinkedList |
| :--- | :--- | :--- |
| **Cấu trúc dữ liệu** | Mảng động (có thể tự tăng kích thước) | Danh sách liên kết đôi (Doubly Linked List) |
| **Get (Truy cập)** | $O(1)$ (Truy cập ngẫu nhiên qua chỉ mục) | $O(n)$ (Phải duyệt tuần tự từ đầu hoặc cuối) |
| **Thêm (Vào cuối)** | $O(1)$ amortized (trung bình) ($O(n)$ khi mở rộng) | $O(1)$ |
| **Thêm / Xóa (Ở giữa)**| $O(n)$ (Phải dịch chuyển các phần tử mảng) | $O(n)$ (Tìm vị trí: $O(n)$, Chèn/Xóa node: $O(1)$) |
| **Thêm / Xóa (Ở đầu)** | $O(n)$ (Phải dịch chuyển toàn bộ mảng) | $O(1)$ |
| **Bộ nhớ dư thừa** | Thấp (Lưu trữ tập trung trong mảng liền kề) | Cao (Mỗi node cần lưu thêm địa chỉ con trỏ) |

### Chi tiết hoạt động:

1. **ArrayList**:
   - Hoạt động dựa trên mảng nội bộ. Khi mảng bị đầy, một mảng mới lớn hơn (thường bằng 1.5 lần mảng cũ) sẽ được cấp phát, và các phần tử cũ sẽ được sao chép sang mảng mới.
   - Thời gian truy cập phần tử là $O(1)$ vì dữ liệu được xếp liền kề nhau và được xác định trực tiếp qua chỉ mục.
   - Thêm hoặc xóa phần tử ở giữa hoặc đầu mảng đòi hỏi dịch chuyển hàng loạt phần tử phía sau trong bộ nhớ ($O(n)$).

2. **LinkedList**:
   - Mỗi phần tử được lưu trong một đối tượng `Node`. Mỗi Node chứa dữ liệu và hai con trỏ: một trỏ tới node tiếp theo (`next`) và một trỏ tới node phía trước (`prev`).
   - Truy cập phần tử tốn $O(n)$ vì phải duyệt từ đầu hoặc cuối danh sách để tìm đến vị trí cần thiết.
   - Thêm hoặc xóa phần tử ở đầu/cuối rất nhanh $O(1)$. Khi chèn ở giữa, cần $O(n)$ để tìm vị trí node chèn, nhưng thao tác chèn thực tế chỉ mất $O(1)$ bằng cách đổi hướng con trỏ.
   - Tốn bộ nhớ hơn `ArrayList` vì mỗi phần tử phải mang theo thông tin của hai con trỏ bổ sung.

### Tóm tắt trường hợp sử dụng:
- Chọn **ArrayList** khi ứng dụng đọc nhiều, cần truy cập ngẫu nhiên nhanh và hầu hết các thao tác thêm/xóa chỉ diễn ra ở cuối danh sách.
- Chọn **LinkedList** khi ứng dụng cần chèn hoặc xóa phần tử liên tục ở hai đầu danh sách (ví dụ như khi làm Queue, Stack hoặc Deque).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-16', 'Java', 'Java', 'Junior', 'What is the difference between a List, Set, and Map?', 'Sự khác biệt giữa List, Set và Map là gì?', '`List`, `Set`, and `Map` are the three primary interfaces of the Java Collections Framework. They represent different ways of organizing and accessing data collections.

### Comparison Table:

| Feature | List | Set | Map |
| :--- | :--- | :--- | :--- |
| **Inherits Collection?** | Yes | Yes | No |
| **Duplicates** | Allows duplicates | Does not allow duplicates | Duplicate keys: No; Duplicate values: Yes |
| **Ordering** | Insertion order preserved | Unordered (except LinkedHashSet/TreeSet) | Unordered (except LinkedHashMap/TreeMap) |
| **Element Access** | By index (e.g., `list.get(0)`) | Iteration (no index access) | By key (e.g., `map.get(key)`) |
| **Null Elements** | Multiple nulls allowed | At most one null (except TreeSet) | One null key (HashMap), multiple null values |
| **Common Classes** | `ArrayList`, `LinkedList` | `HashSet`, `TreeSet`, `LinkedHashSet` | `HashMap`, `TreeMap`, `ConcurrentHashMap` |

### Detailed Breakdown:

1. **List**:
   - An ordered collection of elements (also called a sequence).
   - Elements can be inserted or accessed by their specific position (index) starting from 0.
   - Allows duplicate elements and multiple null values.
   - Preserves insertion order (elements remain in the exact order they were added).

2. **Set**:
   - A collection that cannot contain duplicate elements. It models the mathematical set abstraction.
   - Does not guarantee any specific order (except `LinkedHashSet` which maintains insertion order, and `TreeSet` which sorts elements).
   - Allows at most one null value (except sorted sets like `TreeSet` where null keys will trigger `NullPointerException`).
   - Primarily used when you want to ensure uniqueness of elements.

3. **Map**:
   - An object that maps keys to values. A Map cannot contain duplicate keys; each key can map to at most one value.
   - Does **not** inherit from the `java.util.Collection` interface (unlike `List` and `Set`).
   - Allows looking up a value instantly using its corresponding key ($O(1)$ average complexity for `HashMap`).
   - In implementations like `HashMap`, one null key and multiple null values are allowed.', '`List`, `Set` và `Map` là ba interface chính trong Java Collections Framework. Chúng đại diện cho các cách thức tổ chức và truy cập dữ liệu khác nhau.

### Bảng so sánh chi tiết:

| Đặc tính | List | Set | Map |
| :--- | :--- | :--- | :--- |
| **Kế thừa Collection?**| Có | Có | Không |
| **Cho phép trùng?** | Cho phép trùng lặp | Không cho phép trùng | Key duy nhất; Value được phép trùng |
| **Thứ tự sắp xếp** | Giữ nguyên thứ tự chèn | Không thứ tự (trừ LinkedHashSet/TreeSet) | Không thứ tự (trừ LinkedHashMap/TreeMap) |
| **Cách truy cập** | Qua chỉ mục index (VD: `get(0)`) | Duyệt qua Iterator/Vòng lặp | Qua khóa (VD: `get(key)`) |
| **Phần tử Null** | Nhiều null | Tối đa một null (trừ TreeSet) | Một key null (HashMap), nhiều value null |
| **Các class phổ biến** | `ArrayList`, `LinkedList` | `HashSet`, `TreeSet`, `LinkedHashSet` | `HashMap`, `TreeMap`, `ConcurrentHashMap` |

### Chi tiết từng Interface:

1. **List**:
   - Là một tập hợp có thứ tự (còn được gọi là một chuỗi - sequence).
   - Các phần tử được lưu trữ tuần tự và có thể truy cập trực tiếp qua chỉ số index (bắt đầu từ 0).
   - Cho phép các phần tử trùng lặp và có thể chứa nhiều giá trị null.
   - Bảo toàn thứ tự chèn (phần tử thêm trước sẽ ở trước).

2. **Set**:
   - Là một tập hợp không được chứa các phần tử trùng lặp, mô phỏng khái niệm Tập hợp trong toán học.
   - Không đảm bảo thứ tự chèn mặc định (ngoại trừ `LinkedHashSet` duy trì thứ tự chèn, hoặc `TreeSet` tự sắp xếp theo thứ tự tự nhiên/bộ so sánh).
   - Chỉ cho phép tối đa một phần tử null (ngoại trừ `TreeSet` sẽ báo lỗi NullPointerException nếu chèn null).
   - Thích hợp khi bài toán yêu cầu các giá trị phải là duy nhất.

3. **Map**:
   - Là một cấu trúc dữ liệu lưu trữ dưới dạng cặp Khóa - Giá trị (Key - Value). Map không cho phép trùng lặp Key; mỗi Key chỉ ánh xạ đến một Value duy nhất.
   - **Không** kế thừa từ interface `java.util.Collection`.
   - Hỗ trợ tìm kiếm dữ liệu cực nhanh dựa vào Key ($O(1)$ trung bình đối với `HashMap`).
   - Với triển khai `HashMap`, cho phép một Key null và nhiều Value null.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-17', 'Java', 'Java', 'Mid', 'How does a HashMap work internally?', 'HashMap hoạt động như thế nào ở bên trong?', '`HashMap` in Java operates on the principle of hashing. It is an array of buckets, where each bucket is represented by a node (linked list or red-black tree) storing Key-Value pairs.

### Core Data Structure:
Internally, HashMap maintains an array of Nodes:
```java
transient Node<K,V>[] table;
```
Each Node contains:
- `final int hash` (The precomputed hash value of the key)
- `final K key`
- `V value`
- `Node<K,V> next` (Pointer to the next node in case of collisions)

---

### Step-by-Step Internal Mechanism:

#### 1. The Hashing & Index Calculation
When you call `put(key, value)` or `get(key)`:
- The hash code of the key is calculated using the key''s `hashCode()` method.
- HashMap applies a secondary hash function to spread the bits and reduce collisions:
  ```java
  static final int hash(Object key) {
      int h;
      return (key == null) ? 0 : (h = key.hashCode()) ^ (h >>> 16);
  }
  ```
- The bucket index is calculated using a bitwise AND operation (which is faster than modulo):
  ```java
  index = (n - 1) & hash; // where n is the capacity (length of table, always power of 2)
  ```

#### 2. Storing Data (`put` operation)
- If the bucket at the calculated index is **empty**, a new Node is created and inserted at that index.
- If the bucket is **occupied** (collision):
  1. It traverses the linked list (or Red-Black tree) at that bucket.
  2. If a node with the **same hash** and **same key** (compared using `==` or `.equals()`) is found, the value is updated.
  3. If no matching key is found, the new Node is appended to the end of the chain.

#### 3. Collision Resolution (Java 8 Treeification)
- **Java 7**: Used a singly linked list for collisions ($O(n)$ search time in worst case).
- **Java 8+**: If a bucket''s list size exceeds the `TREEIFY_THRESHOLD` (8) and the overall array capacity is at least 64, the linked list is converted into a **balanced Red-Black Tree** (`TreeNode`). This reduces the search time from $O(n)$ to $O(\log n)$ in collision scenarios.

#### 4. Retrieval (`get` operation)
- Finds the bucket index using the hash of the key.
- Looks at the first node in the bucket. If the key matches (using `.equals()`), returns the value.
- If it does not match, it traverses the remaining nodes (either via `.next` in the linked list or traversing the Red-Black tree) until it finds a match.

#### 5. Rehashing & Resizing
- When the number of elements in the map exceeds the `threshold` (where `threshold = capacity * loadFactor`, default load factor is 0.75):
  - The capacity is doubled (e.g., from 16 to 32).
  - A new array is allocated.
  - All existing elements are rehashed and relocated to their new bucket indices in the new array.', '`HashMap` trong Java hoạt động dựa trên nguyên lý băm (hashing). Thực chất nó là một mảng các buckets (thùng chứa), với mỗi bucket được đại diện bởi các node (danh sách liên kết hoặc cây đỏ-đen) lưu trữ các cặp Key-Value.

### Cấu trúc dữ liệu lõi:
Bên trong, HashMap duy trì một mảng các Nodes:
```java
transient Node<K,V>[] table;
```
Mỗi Node chứa các trường thông tin:
- `final int hash` (Giá trị băm của key đã được tính sẵn)
- `final K key`
- `V value`
- `Node<K,V> next` (Con trỏ trỏ đến Node tiếp theo trong trường hợp va chạm)

---

### Cơ chế hoạt động chi tiết từng bước:

#### 1. Tính mã băm & Chỉ số Index
Khi bạn gọi `put(key, value)` hoặc `get(key)`:
- Mã băm của key được tính bằng phương thức `hashCode()`.
- HashMap áp dụng thêm một hàm băm phụ để phân bổ đều các bit và hạn chế va chạm:
  ```java
  static final int hash(Object key) {
      int h;
      return (key == null) ? 0 : (h = key.hashCode()) ^ (h >>> 16);
  }
  ```
- Chỉ số bucket (index) trong mảng được tính bằng phép toán bitwise AND (nhanh hơn phép chia lấy dư `%`):
  ```java
  index = (n - 1) & hash; // với n là kích thước mảng (luôn là lũy thừa của 2)
  ```

#### 2. Thao tác Lưu trữ (`put`)
- Nếu bucket tại index tính được đang **trống**, một Node mới sẽ được khởi tạo và chèn trực tiếp vào mảng.
- Nếu bucket đã **có phần tử** (xảy ra va chạm - collision):
  1. Nó sẽ duyệt qua danh sách liên kết (hoặc cây đỏ-đen) tại bucket đó.
  2. Nếu tìm thấy một Node có **cùng mã hash** và **cùng key** (so sánh bằng `==` hoặc phương thức `.equals()`), giá trị cũ sẽ bị ghi đè bằng giá trị mới.
  3. Nếu không có key nào trùng khớp, Node mới sẽ được chèn vào cuối chuỗi.

#### 3. Giải quyết Va chạm (Cơ chế chuyển đổi cây trong Java 8)
- **Java 7**: Sử dụng danh sách liên kết đơn để lưu trữ va chạm (tìm kiếm mất $O(n)$ trong trường hợp xấu nhất).
- **Java 8+**: Nếu số lượng node va chạm trong một bucket vượt quá `TREEIFY_THRESHOLD` (8) và dung lượng mảng tối thiểu là 64, danh sách liên kết sẽ được chuyển đổi thành **Cây đỏ-đen cân bằng** (`TreeNode`). Cách này rút ngắn thời gian tìm kiếm từ $O(n)$ xuống còn $O(\log n)$.

#### 4. Thao tác Tìm kiếm (`get`)
- Tính chỉ số bucket từ mã băm của key cần tìm.
- Kiểm tra node đầu tiên tại bucket đó. Nếu key khớp (gọi `.equals()`), trả về value.
- Nếu không khớp, duyệt qua các node tiếp theo (qua thuộc tính `next` đối với danh sách liên kết hoặc tìm trên cây đỏ-đen) cho đến khi tìm thấy node khớp.

#### 5. Thay đổi kích thước (Rehashing & Resizing)
- Khi số phần tử trong map vượt quá ngưỡng `threshold` (với `threshold = capacity * loadFactor`, mặc định load factor là 0.75):
  - Kích thước mảng được nhân đôi (ví dụ: từ 16 lên 32).
  - Một mảng mới được cấp phát.
  - Toàn bộ các phần tử hiện có sẽ được tính lại index (rehash) và phân bổ lại vào mảng mới này.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-18', 'Java', 'Java', 'Mid', 'What happens when two keys have the same hash code in a HashMap?', 'Điều gì xảy ra khi hai key có cùng hash code trong một HashMap?', 'When two different keys have the same hash code, it is known as a **hash collision**. HashMap resolves this collision internally using a hybrid structure of linked lists and balanced trees.

### Steps to Resolve Collisions:

1. **Mapping to the Same Bucket**:
   - Since both keys share the same hash code, the index computed via `(n - 1) & hash` will point to the exact same bucket in the internal array.

2. **Traversing and Comparing with `equals()`**:
   - HashMap will traverse the existing nodes in that specific bucket to check if the new key is equal to any of the existing keys.
   - It performs this lookup by comparing:
     - `hash1 == hash2` AND `(key1 == key2 || key1.equals(key2))`
   - **Case A (Key match)**: If a matching key is found, HashMap overwrites the old value associated with that key with the new value.
   - **Case B (No key match)**: If no matching key is found, it means the keys are distinct (e.g., they happened to have the same hash code but represent different entities). The new key-value pair is appended to the bucket chain:
     - In Java 8+, it is appended at the tail of the list.
     - In Java 7, it was inserted at the head of the list.

3. **Treeification (Java 8+)**:
   - If the chain of collisions in a single bucket becomes too long (reaches `TREEIFY_THRESHOLD = 8`) and the total capacity of the HashMap is at least 64, the linked list is restructured into a **Red-Black Tree** (`TreeNode`).
   - This ensures that lookup performance degrades gracefully to $O(\log n)$ instead of $O(n)$ in the event of worst-case hash collisions.

> [!TIP]
> To minimize collisions, always design high-quality `hashCode()` methods that distribute hash values evenly, and ensure that whenever `equals()` is overridden, `hashCode()` is also overridden to maintain the general contract.', 'Khi hai key khác nhau có cùng mã băm (hash code), hiện tượng này được gọi là **va chạm mã băm (hash collision)**. HashMap giải quyết va chạm này ở bên trong bằng cách sử dụng kết hợp danh sách liên kết và cây cân bằng.

### Quy trình giải quyết va chạm cụ thể:

1. **Ánh xạ vào cùng một Bucket**:
   - Do hai key có cùng mã băm, chỉ số index được tính qua công thức `(n - 1) & hash` sẽ trỏ đến cùng một bucket trong mảng nội bộ.

2. **Duyệt chuỗi và so sánh bằng phương thức `equals()`**:
   - HashMap sẽ duyệt qua các node hiện có trong bucket đó để kiểm tra xem key mới có trùng với bất kỳ key nào đã tồn tại hay không.
   - Nó thực hiện so sánh:
     - `hash1 == hash2` VÀ `(key1 == key2 || key1.equals(key2))`
   - **Trường hợp A (Khớp Key)**: Nếu tìm thấy key trùng khớp, HashMap sẽ ghi đè giá trị mới lên giá trị cũ tương ứng với key đó.
   - **Trường hợp B (Không khớp Key)**: Nếu không có key nào trùng (nghĩa là chúng trùng mã băm nhưng khác nhau về mặt dữ liệu), cặp key-value mới sẽ được thêm vào chuỗi tại bucket đó:
     - Từ Java 8, chèn vào cuối (tail) danh sách liên kết.
     - Trong Java 7, chèn vào đầu (head) danh sách liên kết.

3. **Chuyển đổi thành Cây Đỏ-Đen (Treeification)**:
   - Nếu số lượng node va chạm trong cùng một bucket vượt quá ngưỡng `TREEIFY_THRESHOLD = 8` và tổng dung lượng HashMap lớn hơn hoặc bằng 64, danh sách liên kết này sẽ được chuyển đổi thành **Cây đỏ-đen** (`TreeNode`).
   - Việc này đảm bảo hiệu năng tìm kiếm trong trường hợp va chạm xấu nhất chỉ giảm về $O(\log n)$ thay vì bị tụt xuống $O(n)$.

> [!TIP]
> Để hạn chế va chạm, hãy luôn thiết kế phương thức `hashCode()` chất lượng để phân bổ mã băm đồng đều, và đảm bảo tuân thủ nguyên tắc: mỗi khi ghi đè `equals()`, bắt buộc phải ghi đè `hashCode()`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-19', 'Java', 'Java', 'Senior', 'What is the difference between HashMap and ConcurrentHashMap?', 'Sự khác biệt giữa HashMap và ConcurrentHashMap là gì?', '`HashMap` and `ConcurrentHashMap` are key-value based collections in Java. While `HashMap` is optimized for single-threaded usage, `ConcurrentHashMap` is designed for high-concurrency environments.

### Key Differences:

| Feature | HashMap | ConcurrentHashMap |
| :--- | :--- | :--- |
| **Thread Safety** | Not thread-safe | Thread-safe |
| **Locking Mechanism** | None | Fine-grained synchronization (CAS + synchronized blocks in Java 8+) |
| **Null Keys/Values** | Allows one `null` key, multiple `null` values | Does NOT allow `null` keys or values |
| **Iterator Behavior** | Fail-fast (throws `ConcurrentModificationException`) | Fail-safe (weakly consistent, does not throw) |
| **Performance** | High in single-threaded, dangerous in multi-threaded | High in multi-threaded (scales with threads) |

### In-Depth Analysis:

#### 1. Concurrency Design & Locking Mechanism
- **HashMap**: No synchronization. If multiple threads write to a `HashMap` concurrently, it can lead to race conditions, corrupted state, or (in Java 7) infinite loops during resizing.
- **ConcurrentHashMap (Java 7)**: Introduced **Segment Locking**. The map was divided into 16 independent segments, each acting as an individual hash table with its own lock. A thread updating bucket 1 only locked Segment 1, allowing another thread to write to Segment 2 concurrently.
- **ConcurrentHashMap (Java 8+)**: Shifted from Segment locking to **Node/Bucket locking** using a combination of:
  - **CAS (Compare-And-Swap) operations**: Used for inserting the very first node of an empty bucket. This is non-blocking and extremely fast.
  - **Synchronized Blocks**: Used to lock only the head node of a specific bucket when appending to a linked list or writing to a red-black tree. Other buckets remain completely unlocked for concurrent operations.

#### 2. The Null Value Prohibition
- `HashMap` allows `null` keys and values.
- `ConcurrentHashMap` prohibits `null` keys/values. This is because, in a concurrent map, a `null` return from `get(key)` would create ambiguity: is the key missing, or is the key mapped to `null`? In a single-threaded map, this can be resolved by calling `containsKey(key)`, but in a concurrent setting, the map''s state could change between the two calls, causing race conditions.

#### 3. Iterator Consistency
- **HashMap**: The iterator is **fail-fast**. If the map is modified structurally after the iterator is created (except through the iterator''s own methods), it immediately throws `ConcurrentModificationException`.
- **ConcurrentHashMap**: The iterator is **fail-safe** (weakly consistent). It can tolerate modifications during iteration without throwing exceptions, representing the state of the map at the moment the iterator was created.', '`HashMap` và `ConcurrentHashMap` đều là các tập hợp lưu trữ dạng key-value trong Java. Trong khi `HashMap` được tối ưu hóa cho môi trường đơn luồng, `ConcurrentHashMap` được thiết kế đặc thù cho các môi trường đòi hỏi tính đồng thời (concurrency) cao.

### Các điểm khác biệt chính:

| Đặc tính | HashMap | ConcurrentHashMap |
| :--- | :--- | :--- |
| **An toàn đa luồng** | Không an toàn | An toàn đa luồng |
| **Cơ chế Khóa** | Không dùng khóa | Khóa chi tiết (CAS + Khối synchronized trong Java 8+) |
| **Giá trị Null** | Cho phép 1 key null, nhiều value null | KHÔNG cho phép key hoặc value nhận null |
| **Hành vi Iterator** | Fail-fast (Ném `ConcurrentModificationException`) | Fail-safe (Nhất quán yếu, không ném ngoại lệ) |
| **Hiệu năng** | Cực nhanh ở đơn luồng, nguy hiểm ở đa luồng | Rất tốt ở đa luồng (quy mô tăng theo số luồng) |

### Phân tích chuyên sâu:

#### 1. Thiết kế Concurrency & Cơ chế Khóa (Locking)
- **HashMap**: Không đồng bộ hóa. Nếu nhiều luồng đồng thời ghi vào một `HashMap`, nó có thể dẫn đến tranh chấp dữ liệu (race conditions), hỏng dữ liệu hoặc (trong Java 7) tạo ra vòng lặp vô hạn khi thay đổi kích thước.
- **ConcurrentHashMap (Java 7)**: Sử dụng **Segment Locking (Khóa phân đoạn)**. Map được chia thành 16 phân đoạn độc lập, mỗi phân đoạn hoạt động như một bảng băm riêng biệt với khóa riêng. Luồng chỉnh sửa ở bucket thuộc Phân đoạn 1 chỉ khóa Phân đoạn 1, cho phép các luồng khác ghi đồng thời vào Phân đoạn 2.
- **ConcurrentHashMap (Java 8+)**: Thay đổi từ khóa phân đoạn sang **Khóa theo từng Node/Bucket**, kết hợp:
  - **Thuật toán CAS (Compare-And-Swap)**: Dùng để chèn node đầu tiên vào một bucket trống. Cơ chế này không gây nghẽn luồng (non-blocking) và rất nhanh.
  - **Khối Synchronized**: Dùng để khóa duy nhất node đầu tiên (head node) của một bucket khi chèn thêm node mới vào danh sách liên kết hoặc cập nhật cây đỏ-đen. Các bucket khác vẫn hoàn toàn mở cho các thao tác ghi đồng thời của các luồng khác.

#### 2. Cấm giá trị Null
- `HashMap` cho phép lưu key và value là `null`.
- `ConcurrentHashMap` cấm hoàn toàn `null` ở cả key và value (sẽ ném `NullPointerException`). Lý do là vì trong môi trường đa luồng, việc `get(key)` trả về `null` sẽ gây ra sự mơ hồ: không rõ key đó không tồn tại hay key tồn tại nhưng có value là `null`. Trong map đơn luồng, ta có thể kiểm tra bằng `containsKey(key)`, nhưng trong môi trường đa luồng, trạng thái map có thể đã thay đổi giữa hai lời gọi hàm này.

#### 3. Tính nhất quán của Iterator
- **HashMap**: Iterator là **fail-fast**. Nếu cấu trúc của map bị thay đổi sau khi tạo iterator (trừ khi dùng chính method của iterator), nó sẽ ném ngay lỗi `ConcurrentModificationException`.
- **ConcurrentHashMap**: Iterator là **fail-safe** (nhất quán yếu - weakly consistent). Nó cho phép chỉnh sửa map trong quá trình duyệt mà không ném lỗi, phản ánh trạng thái của map tại thời điểm iterator được tạo ra.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-20', 'Java', 'Java', 'Mid', 'What is the difference between Comparable and Comparator?', 'Sự khác biệt giữa Comparable và Comparator là gì?', 'Both `Comparable` and `Comparator` are interfaces in Java used to sort collections of custom objects. However, they are used in different contexts depending on whether you want a single default sort order or multiple custom sort orders.

### Key Differences:

| Feature | Comparable | Comparator |
| :--- | :--- | :--- |
| **Package** | `java.lang` | `java.util` |
| **Method** | `compareTo(T o)` | `compare(T o1, T o2)` |
| **Modifies Original Class?** | Yes (Class must implement it) | No (Can be a separate class, lambda, or anonymous class) |
| **Sorting Sequence** | Single, default (natural) sorting order | Multiple, customizable sorting orders |
| **Usage** | `Collections.sort(list)` | `Collections.sort(list, comparator)` |

### Detailed Breakdown:

1. **Comparable**:
   - Used to define the **natural ordering** of a class (e.g., numbers sorted numerically, strings sorted alphabetically).
   - The class itself must implement `Comparable` and override the `compareTo` method.
   - Inside `compareTo(T o)`, you compare the current object (`this`) with the passed object (`o`).

2. **Comparator**:
   - Used to define **custom sorting behavior** based on different attributes.
   - Does not require altering the class source code, which is ideal when you want to sort objects of third-party classes.
   - It is functional interface (since Java 8), meaning you can implement it concisely using lambda expressions.

### Example Code:

```java
import java.util.*;

// Implementing Comparable for Natural Sorting (by ID)
class Employee implements Comparable<Employee> {
    int id;
    String name;

    public Employee(int id, String name) {
        this.id = id;
        this.name = name;
    }

    @Override
    public int compareTo(Employee other) {
        return Integer.compare(this.id, other.id); // Natural sort by ID
    }
}

public class Main {
    public static void main(String[] args) {
        List<Employee> list = new ArrayList<>();
        list.add(new Employee(2, "Alice"));
        list.add(new Employee(1, "Bob"));

        // 1. Natural Sort using Comparable
        Collections.sort(list); 

        // 2. Custom Sort using Comparator (by Name)
        Comparator<Employee> nameComparator = (e1, e2) -> e1.name.compareTo(e2.name);
        Collections.sort(list, nameComparator);
    }
}
```', 'Cả `Comparable` và `Comparator` đều là các interface trong Java được dùng để sắp xếp các tập hợp chứa đối tượng tự định nghĩa. Tuy nhiên, cách thức sử dụng chúng phụ thuộc vào việc bạn muốn thiết lập một thứ tự sắp xếp mặc định hay nhiều thứ tự sắp xếp tùy chỉnh khác nhau.

### Các điểm khác biệt chính:

| Đặc tính | Comparable | Comparator |
| :--- | :--- | :--- |
| **Package** | `java.lang` | `java.util` |
| **Phương thức** | `compareTo(T o)` | `compare(T o1, T o2)` |
| **Sửa đổi Class gốc?** | Có (Class cần trực tiếp implements) | Không (Có thể tạo class riêng, lambda hoặc class ẩn danh) |
| **Tiêu chí sắp xếp** | Chỉ một thứ tự mặc định duy nhất (tự nhiên) | Nhiều tiêu chí sắp xếp tùy chỉnh khác nhau |
| **Cách dùng** | `Collections.sort(list)` | `Collections.sort(list, comparator)` |

### Phân tích chi tiết:

1. **Comparable**:
   - Dùng để xác định **thứ tự sắp xếp tự nhiên (natural ordering)** của đối tượng (ví dụ: số tăng dần, chữ cái theo bảng chữ cái A-Z).
   - Chính lớp của đối tượng phải implements `Comparable` và ghi đè phương thức `compareTo`.
   - Trong `compareTo(T o)`, bạn sẽ so sánh đối tượng hiện tại (`this`) với đối tượng được truyền vào (`o`).

2. **Comparator**:
   - Dùng để định nghĩa **các hành vi sắp xếp tùy biến** dựa trên các tiêu chí khác nhau (ví dụ: sắp xếp nhân viên theo tên, theo tuổi, theo lương).
   - Không yêu cầu sửa đổi mã nguồn của lớp gốc, điều này cực kỳ hữu ích khi cần sắp xếp các lớp của thư viện bên thứ ba mà ta không có quyền chỉnh sửa mã nguồn.
   - Là một functional interface (từ Java 8), do đó ta có thể viết rất ngắn gọn bằng biểu thức lambda.

### Ví dụ minh họa:

```java
import java.util.*;

// Triển khai Comparable để sắp xếp tự nhiên (theo ID)
class Employee implements Comparable<Employee> {
    int id;
    String name;

    public Employee(int id, String name) {
        this.id = id;
        this.name = name;
    }

    @Override
    public int compareTo(Employee other) {
        return Integer.compare(this.id, other.id); // Sắp xếp mặc định theo ID
    }
}

public class Main {
    public static void main(String[] args) {
        List<Employee> list = new ArrayList<>();
        list.add(new Employee(2, "Alice"));
        list.add(new Employee(1, "Bob"));

        // 1. Sắp xếp tự nhiên sử dụng Comparable (Sắp xếp theo ID)
        Collections.sort(list); 

        // 2. Sắp xếp tùy biến sử dụng Comparator (Sắp xếp theo Tên)
        Comparator<Employee> nameComparator = (e1, e2) -> e1.name.compareTo(e2.name);
        Collections.sort(list, nameComparator);
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-21', 'Java', 'Java', 'Mid', 'What are generics in Java and why are they useful?', 'Generics trong Java là gì và tại sao chúng lại hữu ích?', 'Generics (introduced in Java 5) enable types (classes, interfaces, and methods) to be parameterized. They allow you to write classes and methods that can work with any data type while ensuring type safety at compile time.

### Why Generics are Useful (Key Benefits):

1. **Stronger Type Safety at Compile Time**:
   - Without generics, collections could hold any object. Type mismatches could only be discovered at runtime, resulting in a `ClassCastException`.
   - Generics force the compiler to check for type correctness, raising errors at compile-time instead of runtime.
   ```java
   // Without Generics (Runtime failure risk)
   List list = new ArrayList();
   list.add("Hello");
   Integer num = (Integer) list.get(0); // Throws ClassCastException at runtime

   // With Generics (Compile-time check)
   List<String> list2 = new ArrayList<>();
   list2.add("Hello");
   // list2.add(10); // Compile-time error
   ```

2. **Elimination of Explicit Casting**:
   - Generics remove the need for explicit type casting when retrieving elements from collections, making code cleaner and less error-prone.
   ```java
   // Without Generics
   String s = (String) list.get(0); 

   // With Generics
   String s2 = list2.get(0); // No casting required
   ```

3. **Code Reusability**:
   - Generics allow you to write generic algorithms and data structures (such as `ArrayList<T>`, `HashMap<K, V>`) that operate on different types of data without duplication.

---

### Core Concepts of Generics:

- **Type Erasure**: 
  To ensure backward compatibility with older Java versions, Java compilers apply a mechanism called **Type Erasure**. The compiler uses generics to verify type safety at compile time, but then "erases" the generic type parameters, replacing them with raw types (usually `Object` or the upper bound) in the generated bytecode.
- **Wildcards (`?`)**:
  Used to represent an unknown type:
  - **Upper Bounded (`<? extends T>`)**: Restricts the unknown type to be a subtype of `T` (often used to read data safely).
  - **Lower Bounded (`<? super T>`)**: Restricts the unknown type to be a supertype of `T` (often used to write data safely).
  - **Unbounded (`<?>`)**: Represents any type.', 'Generics (được giới thiệu từ Java 5) cho phép tham số hóa kiểu dữ liệu cho lớp, interface hoặc phương thức. Nó cho phép bạn viết mã nguồn có thể hoạt động với bất kỳ kiểu dữ liệu nào mà vẫn đảm bảo tính an toàn kiểu dữ liệu (type safety) tại thời điểm biên dịch.

### Các lợi ích chính của Generics:

1. **Bảo đảm an toàn kiểu dữ liệu tại thời điểm biên dịch (Compile-time Type Safety)**:
   - Nếu không có generics, một collection có thể chứa bất kỳ đối tượng nào. Lỗi sai lệch kiểu dữ liệu chỉ được phát hiện lúc chạy ứng dụng (runtime) dưới dạng ngoại lệ `ClassCastException`.
   - Generics buộc trình biên dịch phải kiểm tra tính hợp lệ của kiểu dữ liệu ngay khi biên dịch, giảm thiểu lỗi runtime.
   ```java
   // Không có Generics (Nguy cơ lỗi Runtime)
   List list = new ArrayList();
   list.add("Hello");
   Integer num = (Integer) list.get(0); // Ném ra ClassCastException ở runtime

   // Có Generics (Kiểm tra ngay lúc biên dịch)
   List<String> list2 = new ArrayList<>();
   list2.add("Hello");
   // list2.add(10); // Báo lỗi ngay lập tức khi viết code
   ```

2. **Loại bỏ việc ép kiểu thủ công (Elimination of Casting)**:
   - Generics giúp loại bỏ việc ép kiểu rõ ràng khi lấy dữ liệu ra khỏi các collection, làm cho mã nguồn sạch hơn và ít xảy ra lỗi hơn.
   ```java
   // Không có Generics
   String s = (String) list.get(0); 

   // Có Generics
   String s2 = list2.get(0); // Tự động nhận diện kiểu String, không cần ép kiểu
   ```

3. **Tái sử dụng mã nguồn (Code Reusability)**:
   - Generics cho phép lập trình viên viết các thuật toán và cấu trúc dữ liệu tổng quát (ví dụ: `ArrayList<T>`, `HashMap<K, V>`) hoạt động hiệu quả trên nhiều kiểu dữ liệu khác nhau mà không phải nhân bản mã nguồn.

---

### Khái niệm cốt lõi trong Generics:

- **Cơ chế Xóa bỏ kiểu (Type Erasure)**:
  Để đảm bảo khả năng tương thích ngược với các phiên bản Java cũ hơn, trình biên dịch Java sử dụng cơ chế **Type Erasure**. Trình biên dịch sử dụng generics để kiểm tra an toàn kiểu ở thời điểm biên dịch, sau đó "xóa" toàn bộ thông tin kiểu generic và thay thế bằng kiểu gốc (thường là `Object` hoặc kiểu giới hạn biên) trong bytecode được tạo ra.
- **Ký tự đại diện Wildcard (`?`)**:
  Được dùng để đại diện cho một kiểu dữ liệu chưa xác định:
  - **Giới hạn trên (`<? extends T>`)**: Giới hạn kiểu chưa xác định phải là lớp con của `T` (thường dùng để đọc dữ liệu an toàn).
  - **Giới hạn dưới (`<? super T>`)**: Giới hạn kiểu chưa xác định phải là lớp cha của `T` (thường dùng để ghi dữ liệu an toàn).
  - **Không giới hạn (`<?>`)**: Đại diện cho bất kỳ kiểu dữ liệu nào.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-22', 'Java', 'Java', 'Junior', 'What is the difference between final, finally, and finalize?', 'Sự khác biệt giữa final, finally và finalize là gì?', 'Although they have similar names, `final`, `finally`, and `finalize` are completely different concepts in Java.

### Summary Comparison:

| Keyword / Concept | Type | Purpose / Description |
| :--- | :--- | :--- |
| **`final`** | Keyword | Used as a modifier to apply restrictions on classes, methods, and variables. |
| **`finally`** | Block | Used in exception handling to execute important cleanup code (e.g., closing resources). |
| **`finalize`** | Method | A method in the `Object` class invoked by the Garbage Collector before reclaiming memory. |

### Detailed Explanation:

#### 1. `final` (Modifier Keyword)
- **Variables**: Once a `final` variable is initialized, its value cannot be reassigned (it becomes a constant).
- **Methods**: A `final` method cannot be overridden by subclasses.
- **Classes**: A `final` class cannot be inherited (subclassed). For example, `java.lang.String` is a final class.

#### 2. `finally` (Exception Handling Block)
- Used in conjunction with `try` and `catch` blocks.
- The code inside the `finally` block is guaranteed to execute, regardless of whether an exception is thrown or handled.
- Typically used to release system resources (e.g., closing file streams, database connections).

#### 3. `finalize()` (Object Method)
- A method defined in the `java.lang.Object` class: `protected void finalize() throws Throwable`.
- It is invoked by the Garbage Collector (GC) just before an object is destroyed and reclaimed from memory, giving the object a last chance to clean up system resources.
- **Important Note**: Since Java 9, `finalize()` has been **deprecated** because it is unpredictable, slow, can cause memory leaks, and there is no guarantee about when (or if) it will run. Modern Java uses `Cleaner` or implementations of `AutoCloseable` (with try-with-resources) instead.', 'Mặc dù có tên gọi gần giống nhau, `final`, `finally` và `finalize` là các khái niệm hoàn toàn khác nhau trong Java.

### Bảng tóm tắt so sánh:

| Khái niệm | Thành phần | Mục đích / Mô tả |
| :--- | :--- | :--- |
| **`final`** | Từ khóa bổ từ (Modifier) | Dùng để đặt các hạn chế lên biến, phương thức và lớp. |
| **`finally`** | Khối lệnh (Block) | Dùng trong xử lý ngoại lệ để thực thi mã dọn dẹp quan trọng (ví dụ: đóng kết nối). |
| **`finalize`** | Phương thức (Method) | Phương thức thuộc lớp `Object`, được gọi bởi Bộ thu gom rác trước khi hủy đối tượng. |

### Chi tiết từng khái niệm:

#### 1. `final` (Từ khóa bổ từ)
- **Biến (Variables)**: Khi một biến được khai báo với `final`, giá trị của nó không thể thay đổi sau khi đã khởi tạo (nó trở thành hằng số).
- **Phương thức (Methods)**: Phương thức `final` ngăn không cho lớp con ghi đè (override) phương thức này.
- **Lớp (Classes)**: Lớp `final` ngăn không cho lớp khác kế thừa. Ví dụ tiêu biểu là lớp `java.lang.String`.

#### 2. `finally` (Khối lệnh xử lý ngoại lệ)
- Đi kèm với cấu trúc `try-catch`.
- Khối lệnh `finally` luôn được đảm bảo thực thi, dù cho có ngoại lệ xảy ra và được bắt giữ hay không.
- Thường dùng để viết mã dọn dẹp, đóng tài nguyên hệ thống (như luồng đọc file, kết nối cơ sở dữ liệu).

#### 3. `finalize()` (Phương thức dọn dẹp đối tượng)
- Là phương thức định nghĩa sẵn trong lớp `java.lang.Object`: `protected void finalize() throws Throwable`.
- Được gọi bởi Bộ thu gom rác (Garbage Collector - GC) trước khi đối tượng bị giải phóng khỏi bộ nhớ, cho phép đối tượng thực hiện các tác vụ dọn dẹp tài nguyên cuối cùng.
- **Lưu ý quan trọng**: Kể từ Java 9, phương thức `finalize()` đã bị **đánh dấu lỗi thời (deprecated)** do hoạt động thiếu ổn định, làm chậm hệ thống, có nguy cơ rò rỉ bộ nhớ và không đảm bảo thời gian hay khả năng thực thi thực tế. Lập trình viên nên sử dụng `Cleaner` hoặc triển khai `AutoCloseable` kết hợp với try-with-resources để thay thế.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-23', 'Java', 'Java', 'Junior', 'What is the difference between static and instance members?', 'Sự khác biệt giữa các thành viên static (tĩnh) và instance (thể hiện) là gì?', 'In Java, class members (fields and methods) are categorized into **static members** (class-level) and **instance members** (object-level). The fundamental difference lies in how they are loaded, where they reside in memory, and how they are accessed.

#### 1. Static Members (Class-level)
*   **Definition**: Declared with the `static` keyword. They belong to the class itself rather than any specific instance.
*   **Memory Allocation**: Allocated in the **Metaspace** (formerly Method Area in Java 7 and earlier) when the class is loaded by the JVM. Memory is allocated only once.
*   **Life Cycle**: Exist as long as the class is loaded in the JVM.
*   **Access**: Can be accessed directly using the class name (e.g., `ClassName.staticMethod()`), without creating an object. They can also be accessed from instance methods.
*   **Limitations**: Static methods cannot access instance variables or call instance methods directly because they do not have a reference to `this` or `super`.

#### 2. Instance Members (Object-level)
*   **Definition**: Declared without the `static` keyword. They belong to a specific instance (object) of the class.
*   **Memory Allocation**: Allocated in the **Heap memory** whenever a new object is instantiated using the `new` keyword. Each object gets its own copy of these members.
*   **Life Cycle**: Exist as long as the corresponding object resides in memory (until garbage collected).
*   **Access**: Accessed using the object reference (e.g., `objectInstance.instanceMethod()`).
*   **Capabilities**: Instance methods can access both instance members and static members directly.

#### Comparison Table
| Feature | Static Members | Instance Members |
| :--- | :--- | :--- |
| **Keyword** | `static` | None |
| **Association** | Class-level (shared by all instances) | Object-level (belongs to a specific object) |
| **Memory Location** | Metaspace (Class Metadata Area) | Heap Memory (within the object) |
| **Instantiation** | Accessed without creating an object | Requires object creation before access |
| **`this` reference** | Not available | Available |
| **Usage** | Helper/Utility methods, global constants | Object state and behaviors |

#### Code Example
```java
public class Counter {
    // Static member: shared across all objects
    public static int globalCount = 0;
    
    // Instance member: unique to each object
    public int instanceCount = 0;

    public Counter() {
        globalCount++;
        instanceCount++;
    }

    public static void printStaticInfo() {
        System.out.println("Global: " + globalCount);
        // System.out.println(instanceCount); // Compile Error: Cannot make a static reference to the non-static field
    }

    public void printInstanceInfo() {
        // Can access both static and instance members
        System.out.println("Global: " + globalCount + ", Instance: " + instanceCount);
    }
}
```', 'Trong Java, các thành viên của class (biến và phương thức) được chia thành **thành viên static** (cấp lớp - class-level) và **thành viên instance** (cấp đối tượng - object-level). Sự khác biệt cốt lõi nằm ở cách chúng được nạp, vị trí lưu trữ trong bộ nhớ và cách truy cập.

#### 1. Thành viên Static (Class-level)
*   **Định nghĩa**: Được khai báo với từ khóa `static`. Chúng thuộc về chính class đó chứ không thuộc về bất kỳ thực thể (instance) cụ thể nào.
*   **Cấp phát bộ nhớ**: Được lưu trữ trong vùng nhớ **Metaspace** (trước Java 8 là Method Area) khi class được JVM nạp (load). Bộ nhớ chỉ được cấp phát một lần duy nhất.
*   **Vòng đời**: Tồn tại suốt thời gian class được nạp trong JVM.
*   **Cách truy cập**: Có thể truy cập trực tiếp bằng tên class (ví dụ: `ClassName.staticMethod()`) mà không cần tạo đối tượng. Chúng cũng có thể được gọi từ các phương thức instance.
*   **Hạn chế**: Phương thức static không thể truy cập trực tiếp các biến instance hoặc gọi phương thức instance vì chúng không có tham chiếu đến từ khóa `this` hoặc `super`.

#### 2. Thành viên Instance (Object-level)
*   **Định nghĩa**: Khai báo không có từ khóa `static`. Chúng thuộc về một đối tượng cụ thể được tạo ra từ class đó.
*   **Cấp phát bộ nhớ**: Được lưu trữ trong bộ nhớ **Heap** mỗi khi một đối tượng mới được tạo thông qua từ khóa `new`. Mỗi đối tượng sở hữu một bản sao riêng của các thành viên này.
*   **Vòng đời**: Tồn tại gắn liền với vòng đời của đối tượng (cho đến khi bị dọn dẹp bởi Garbage Collector).
*   **Cách truy cập**: Phải truy cập thông qua tham chiếu đối tượng (ví dụ: `objectInstance.instanceMethod()`).
*   **Khả năng**: Phương thức instance có thể truy cập trực tiếp cả thành viên static và thành viên instance khác.

#### Bảng so sánh
| Đặc tính | Thành viên Static | Thành viên Instance |
| :--- | :--- | :--- |
| **Từ khóa** | `static` | Không sử dụng |
| **Phạm vi** | Cấp Class (chia sẻ giữa các đối tượng) | Cấp Đối tượng (thuộc về thực thể riêng lẻ) |
| **Vị trí bộ nhớ** | Metaspace (Vùng dữ liệu Class) | Heap Memory (nằm trong đối tượng) |
| **Khởi tạo** | Không cần tạo đối tượng | Bắt buộc phải tạo đối tượng |
| **Tham chiếu `this`**| Không khả dụng | Khả dụng |
| **Ứng dụng** | Phương thức tiện ích (Utility), hằng số chung | Trạng thái và hành vi riêng của đối tượng |

#### Ví dụ minh họa
```java
public class Counter {
    // Thành viên static: chia sẻ chung cho mọi đối tượng
    public static int globalCount = 0;
    
    // Thành viên instance: riêng biệt cho từng đối tượng
    public int instanceCount = 0;

    public Counter() {
        globalCount++;
        instanceCount++;
    }

    public static void printStaticInfo() {
        System.out.println("Global: " + globalCount);
        // System.out.println(instanceCount); // Lỗi biên dịch: Không thể tham chiếu đến biến instance từ ngữ cảnh static
    }

    public void printInstanceInfo() {
        // Có thể truy cập cả static và instance
        System.out.println("Global: " + globalCount + ", Instance: " + instanceCount);
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-24', 'Java', 'Java', 'Junior', 'What is the difference between stack memory and heap memory?', 'Sự khác biệt giữa bộ nhớ Stack và bộ nhớ Heap là gì?', 'Java manages memory through two main components: **Stack Memory** and **Heap Memory**. Understanding the distinction is crucial for optimizing Java application performance, troubleshooting memory issues, and writing thread-safe code.

#### 1. Stack Memory
*   **Purpose**: Used for execution of a thread and storing local variables and method call frames.
*   **Access/Mechanism**: Follows LIFO (Last-In-First-Out) order. When a method is called, a new stack frame is pushed onto the stack containing method parameters, local primitive variables, and references to heap objects. When the method returns, the frame is popped and the memory is immediately reclaimed.
*   **Thread Safety**: Thread-safe because each thread has its own private Stack.
*   **Size**: Fixed size (can be adjusted using the `-Xss` JVM option). It is relatively small compared to Heap.
*   **Errors**: Exceeding the stack size leads to a `java.lang.StackOverflowError` (often caused by infinite recursion).

#### 2. Heap Memory
*   **Purpose**: Used for dynamic memory allocation, where all objects (including their instance variables) are created.
*   **Access/Mechanism**: Objects in the heap can be accessed globally from anywhere in the application (provided there is a reference). Memory is not reclaimed automatically when a method finishes; instead, it is managed by the **Garbage Collector (GC)**.
*   **Thread Safety**: Not thread-safe by default, as the heap is shared among all threads. Proper synchronization is needed for shared objects.
*   **Size**: Dynamically grows and shrinks, managed via JVM options (e.g., `-Xms` for starting size, `-Xmx` for max size). Much larger than Stack memory.
*   **Errors**: If the heap runs out of space and GC cannot free up memory, it throws a `java.lang.OutOfMemoryError: Java heap space`.

#### Comparison Table
| Feature | Stack Memory | Heap Memory |
| :--- | :--- | :--- |
| **Scope** | Local variables, method invocations, primitive types, and object references. | All created objects (e.g., `new MyObject()`), arrays, and instance variables. |
| **Access Speed** | Extremely fast (direct CPU pointer manipulation). | Slower compared to stack (requires pointer lookup and dereferencing). |
| **Visibility** | Thread-private (each thread has its own Stack). | Globally shared (all threads share the Heap). |
| **Memory Reclamation** | Automatically cleaned up as soon as a method returns. | Cleaned up asynchronously by the Garbage Collector. |
| **Life Cycle** | Short-lived (duration of the method execution). | Long-lived (as long as references to the object exist). |
| **Exception** | `StackOverflowError` | `OutOfMemoryError` |

#### Visualization Code Context
```java
public void execute() {
    int localVal = 42; // Allocated on Stack
    MyObject obj = new MyObject(); // ''obj'' reference is on Stack; the actual MyObject instance is on Heap
}
```', 'Java quản lý bộ nhớ thông qua hai thành phần chính: **Bộ nhớ Stack** và **Bộ nhớ Heap**. Hiểu rõ sự khác biệt giữa hai vùng nhớ này là điều cực kỳ quan trọng để tối ưu hóa hiệu năng, gỡ lỗi bộ nhớ và viết mã nguồn an toàn đa luồng (thread-safe).

#### 1. Bộ nhớ Stack (Ngăn xếp)
*   **Mục đích**: Dùng cho quá trình thực thi của một luồng (thread), lưu trữ các biến cục bộ (local variables) và các khung cuộc gọi phương thức (method stack frames).
*   **Cơ chế hoạt động**: Hoạt động theo cơ chế LIFO (Last-In-First-Out). Khi một phương thức được gọi, một stack frame mới được đẩy (push) vào stack chứa các tham số, biến nguyên thủy cục bộ, và các tham chiếu (reference) đến đối tượng trên Heap. Khi phương thức kết thúc, stack frame bị lấy ra (pop) và bộ nhớ được giải phóng ngay lập tức.
*   **An toàn đa luồng (Thread Safety)**: Mỗi luồng có một Stack riêng tư, do đó Stack hoàn toàn an toàn đa luồng.
*   **Kích thước**: Kích thước cố định (có thể điều chỉnh bằng tham số `-Xss` của JVM), tương đối nhỏ so với Heap.
*   **Lỗi thường gặp**: Vượt quá kích thước Stack sẽ gây ra lỗi `java.lang.StackOverflowError` (thường do đệ quy vô hạn).

#### 2. Bộ nhớ Heap (Đống)
*   **Mục đích**: Dùng để cấp phát bộ nhớ động cho tất cả các đối tượng (object) được tạo ra trong Java (bao gồm cả các biến instance của đối tượng đó).
*   **Cơ chế hoạt động**: Các đối tượng trên Heap có thể được truy cập toàn cục từ bất kỳ đâu trong ứng dụng (nếu có tham chiếu hợp lệ). Bộ nhớ không giải phóng ngay khi phương thức kết thúc, mà được quản lý và dọn dẹp bất đồng bộ bởi **Bộ dọn rác (Garbage Collector - GC)**.
*   **An toàn đa luồng (Thread Safety)**: Bộ nhớ Heap được chia sẻ chung cho tất cả các luồng, do đó không an toàn đa luồng một cách tự động. Cần đồng bộ hóa (synchronization) khi truy cập các đối tượng dùng chung.
*   **Kích thước**: Có thể co giãn linh hoạt, cấu hình qua các tham số JVM (như `-Xms` khởi tạo, `-Xmx` tối đa). Kích thước lớn hơn rất nhiều so với Stack.
*   **Lỗi thường gặp**: Nếu Heap bị đầy và GC không thể giải phóng thêm bộ nhớ, JVM sẽ ném ra lỗi `java.lang.OutOfMemoryError: Java heap space`.

#### Bảng so sánh
| Đặc tính | Bộ nhớ Stack | Bộ nhớ Heap |
| :--- | :--- | :--- |
| **Dữ liệu lưu trữ** | Biến cục bộ, tham chiếu đối tượng, kiểu dữ liệu nguyên thủy (primitive type). | Đối tượng được tạo bằng `new`, mảng (arrays), biến thực thể (instance fields). |
| **Tốc độ truy cập** | Cực kỳ nhanh (được quản lý trực tiếp bằng con trỏ CPU). | Chậm hơn (do cần tìm kiếm địa chỉ và giải tham chiếu). |
| **Phạm vi hoạt động** | Riêng tư của từng luồng (Thread-private). | Dùng chung toàn hệ thống (Globally shared). |
| **Cơ chế giải phóng** | Tự động giải phóng ngay lập tức khi phương thức kết thúc. | Giải phóng bất đồng bộ bởi Garbage Collector khi đối tượng không còn tham chiếu. |
| **Vòng đời** | Ngắn hạn (theo thời gian chạy phương thức). | Dài hạn (tồn tại cho đến khi không còn ai tham chiếu đến). |
| **Lỗi phát sinh** | `StackOverflowError` | `OutOfMemoryError` |

#### Ví dụ mã nguồn minh họa bộ nhớ
```java
public void execute() {
    int localVal = 42; // Biến localVal nằm trên Stack
    MyObject obj = new MyObject(); // Biến tham chiếu ''obj'' nằm trên Stack; đối tượng MyObject thực tế nằm trên Heap
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-25', 'Java', 'Java', 'Junior', 'What is the JVM and what does it do?', 'JVM là gì và nó làm nhiệm vụ gì?', 'The **JVM (Java Virtual Machine)** is the cornerstone of the Java platform. It is an abstract computing machine that provides a runtime environment in which Java bytecode can be executed. Because the JVM is available for many hardware and software platforms, it enables Java''s core promise: **"Write Once, Run Anywhere" (WORA)**.

#### What Does the JVM Do?
The JVM performs several critical operations during the lifecycle of a Java application:

1.  **Loads Code (Class Loader)**:
    Loads Java class files (`.class`) into memory. The Class Loader subsystem handles three main phases: Loading, Linking (Verification, Preparation, Resolution), and Initialization.
2.  **Verifies Code**:
    Ensures that the bytecode is valid, adheres to JVM specifications, and does not violate security constraints (e.g., buffer overflows or unauthorized memory access).
3.  **Executes Code**:
    The **Execution Engine** converts bytecode to native machine instructions. It does this via:
    *   **Interpreter**: Reads and executes bytecode line-by-line (slower).
    *   **JIT Compiler (Just-In-Time)**: Compiles frequently executed code blocks (hotspots) into native machine code to boost execution speed.
4.  **Manages Memory (Runtime Data Areas)**:
    Allocates and structures memory for the application:
    *   *Method Area/Metaspace*: For class structures and static variables.
    *   *Heap*: For dynamically allocated objects.
    *   *Stack*: For local variables and method execution frames.
    *   *PC Registers*: Tracks the next instruction.
    *   *Native Method Stack*: For native code instructions.
5.  **Garbage Collection (GC)**:
    Automatically identifies and reclaims memory occupied by objects that are no longer reachable or referenced by the program, preventing memory exhaustion.
6.  **Provides Runtime Environment**:
    Provides libraries, interacts with the host OS, and manages thread execution, exception handling, and platform security.

#### Summary Workflow
```
[Java Source (.java)] --> (javac Compiler) --> [Bytecode (.class)] --> [JVM (Loads, Verifies, Executes)] --> [Native OS Instructions]
```', '**JVM (Java Virtual Machine - Máy ảo Java)** là nền tảng cốt lõi của công nghệ Java. Nó là một máy tính ảo hóa cung cấp môi trường thực thi để dịch và chạy mã bytecode Java. Do JVM được thiết kế tương thích với nhiều hệ điều hành và phần cứng khác nhau, nó giúp hiện thực hóa triết lý nổi tiếng của Java: **"Write Once, Run Anywhere" (WORA - Viết một lần, chạy mọi nơi)**.

#### JVM làm nhiệm vụ gì?
JVM thực hiện các chức năng cốt lõi sau đây trong vòng đời của một ứng dụng Java:

1.  **Nạp Code (Class Loader)**:
    Hệ thống Class Loader nạp các file `.class` (bytecode) vào bộ nhớ. Quá trình này gồm 3 giai đoạn: Nạp (Loading), Liên kết (Linking - bao gồm Xác minh, Chuẩn bị, Phân giải) và Khởi tạo (Initialization).
2.  **Xác minh Code (Verification)**:
    Kiểm tra tính hợp lệ của mã bytecode để đảm bảo mã tuân thủ cấu trúc của JVM và không gây ra các mối đe dọa bảo mật (như tràn bộ đệm hoặc truy cập bất hợp pháp vào bộ nhớ vật lý).
3.  **Thực thi Code**:
    Bộ máy thực thi (**Execution Engine**) chuyển đổi bytecode thành mã máy của hệ điều hành đích. Nó kết hợp hai bộ phận:
    *   **Interpreter (Bộ thông dịch)**: Đọc và chạy từng dòng mã bytecode (chạy chậm hơn).
    *   **JIT Compiler (Just-In-Time - Bộ biên dịch tức thời)**: Phát hiện các đoạn mã được gọi thường xuyên ("hotspots") và biên dịch chúng trực tiếp thành mã máy để tăng tốc độ chạy của chương trình.
4.  **Quản lý bộ nhớ (Runtime Data Areas)**:
    Quản lý và cấp phát vùng nhớ hệ thống cho ứng dụng Java:
    *   *Metaspace/Method Area*: Lưu thông tin class và biến static.
    *   *Heap*: Lưu các đối tượng được khởi tạo động.
    *   *Stack*: Lưu trữ các biến cục bộ và khung thực thi hàm.
    *   *PC Registers*: Lưu trữ địa chỉ lệnh tiếp theo sẽ thực thi.
    *   *Native Method Stack*: Lưu trữ các lệnh mã nguồn native (C/C++).
5.  **Dọn rác tự động (Garbage Collection - GC)**:
    Tự động tìm kiếm, xác định và thu hồi bộ nhớ từ các đối tượng không còn được sử dụng trong chương trình, giúp tối ưu hóa bộ nhớ và ngăn ngừa rò rỉ bộ nhớ.
6.  **Cung cấp môi trường thực thi**:
    Cung cấp thư viện runtime, làm cầu nối giao tiếp với hệ điều hành của máy chủ, quản lý đa luồng, xử lý ngoại lệ và quản lý cơ chế bảo mật.

#### Sơ đồ hoạt động tóm tắt
```
[Mã nguồn Java (.java)] --> (Trình biên dịch javac) --> [Bytecode (.class)] --> [JVM (Nạp, Xác minh, Thực thi)] --> [Mã máy của OS]
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-26', 'Java', 'Java', 'Junior', 'What are JDK, JRE, and JVM?', 'JDK, JRE và JVM là gì?', 'In the Java ecosystem, **JDK**, **JRE**, and **JVM** are three fundamental components, each representing a superset of the other. The relationship can be simplified as: `JDK = JRE + Development Tools`, and `JRE = JVM + Library Classes`.

#### 1. JVM (Java Virtual Machine)
*   **What it is**: The execution engine that runs Java bytecode on a specific hardware and operating system.
*   **Responsibility**: Converts bytecode into machine code, manages memory, executes GC, and enforces application security.
*   **Type**: It is platform-dependent (there are different JVM builds for Windows, macOS, Linux, etc.), which allows the bytecode (`.class` files) to remain platform-independent.

#### 2. JRE (Java Runtime Environment)
*   **What it is**: The package containing everything needed to *run* a compiled Java application.
*   **Components**: Contains the JVM, core class libraries (like `java.lang`, `java.util`, etc.), and integration libraries.
*   **Usage**: Intended for end-users who only want to execute Java programs, not develop them. It does not contain development tools like a compiler or debugger.

#### 3. JDK (Java Development Kit)
*   **What it is**: The full-featured software development kit for Java developers.
*   **Components**: Contains the JRE, JVM, and developer tools such as the Java Compiler (`javac`), Archiver (`jar`), Debugger (`jdb`), and Documentation tool (`javadoc`).
*   **Usage**: Required by developers to write, compile, debug, and run Java code.

#### Visual Hierarchy
```
+--------------------------------------------------------------+
|                     JDK (Development Kit)                    |
|  +--------------------------------------------------------+  |
|  |                 JRE (Runtime Environment)              |  |
|  |  +------------------------+  +----------------------+  |  |
|  |  |          JVM           |  |    Class Libraries   |  |  |
|  |  |   (Execution Engine)   |  |   (rt.jar, util,...) |  |  |
|  |  +------------------------+  +----------------------+  |  |
|  +--------------------------------------------------------+  |
|  +--------------------------------------------------------+  |
|  |   Development Tools (javac, jar, javadoc, jdb, etc.)   |  |
|  +--------------------------------------------------------+  |
+--------------------------------------------------------------+
```', 'Trong hệ sinh thái Java, **JDK**, **JRE** và **JVM** là ba thành phần cơ bản cấu thành nên nền tảng thực thi và phát triển. Mối quan hệ giữa chúng có thể được tóm tắt bằng công thức: `JDK = JRE + Công cụ phát triển`, và `JRE = JVM + Thư viện cốt lõi`.

#### 1. JVM (Java Virtual Machine - Máy ảo Java)
*   **Là gì**: Bộ máy thực thi mã bytecode trên một nền tảng phần cứng và hệ điều hành cụ thể.
*   **Nhiệm vụ**: Chuyển đổi mã bytecode thành mã máy cụ thể, quản lý bộ nhớ, thực hiện dọn rác (GC) và kiểm soát bảo mật.
*   **Đặc tính**: JVM phụ thuộc vào nền tảng (có các bản cài đặt riêng cho Windows, macOS, Linux, v.v.), điều này giúp cho mã bytecode (file `.class`) độc lập với nền tảng.

#### 2. JRE (Java Runtime Environment - Môi trường chạy Java)
*   **Là gì**: Một gói phần mềm chứa tất cả các thành phần cần thiết để *chạy* một ứng dụng Java đã biên dịch.
*   **Thành phần**: Bao gồm JVM và các thư viện lớp lõi của Java (như `java.lang`, `java.util`, v.v.).
*   **Đối tượng sử dụng**: Dành cho người dùng cuối (end-user), những người chỉ có nhu cầu chạy phần mềm Java mà không cần lập trình hay phát triển. JRE không chứa các công cụ phát triển như trình biên dịch.

#### 3. JDK (Java Development Kit - Bộ công cụ phát triển Java)
*   **Là gì**: Bộ công cụ phát triển phần mềm đầy đủ dành cho lập trình viên Java.
*   **Thành phần**: Bao gồm cả JRE, JVM và các công cụ phát triển như trình biên dịch (`javac`), trình đóng gói (`jar`), trình gỡ lỗi (`jdb`), và công cụ tạo tài liệu (`javadoc`).
*   **Đối tượng sử dụng**: Dành cho các nhà phát triển ứng dụng viết mã nguồn, biên dịch và gỡ lỗi phần mềm Java.

#### Sơ đồ cấu trúc phân cấp
```
+--------------------------------------------------------------+
|                     JDK (Bộ công cụ phát triển)              |
|  +--------------------------------------------------------+  |
|  |                 JRE (Môi trường thực thi)              |  |
|  |  +------------------------+  +----------------------+  |  |
|  |  |          JVM           |  |  Thư viện lớp lõi    |  |  |
|  |  |       (Máy ảo)         |  |   (java.base,...)    |  |  |
|  |  +------------------------+  +----------------------+  |  |
|  +--------------------------------------------------------+  |
|  +--------------------------------------------------------+  |
|  |   Công cụ phát triển (javac, jar, javadoc, jdb, v.v.)  |  |
|  +--------------------------------------------------------+  |
+--------------------------------------------------------------+
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-27', 'Java', 'Java', 'Mid', 'What is garbage collection in Java?', 'Dọn rác (Garbage Collection) trong Java là gì?', '**Garbage Collection (GC)** in Java is an automatic process managed by the JVM to reclaim Heap memory occupied by unreachable (unused) objects. Unlike C/C++ where developers must manually deallocate memory using `free()` or `delete`, Java automates this to prevent memory leaks and ease development.

#### How It Works: The General Process
The GC uses a concept called **"Reachability Analysis"**. An object is eligible for garbage collection if it is no longer reachable from any **GC Roots** (e.g., active thread stacks, static variables, local variables in execution).

The standard workflow uses the **Mark-and-Sweep** approach:
1.  **Marking**: The GC starts from GC Roots and walks the object graph to mark all reachable objects as "alive".
2.  **Sweeping**: Unreachable objects are identified, and the memory allocated to them is reclaimed.
3.  **Compacting (Optional)**: Relocates surviving objects together to avoid fragmented memory spaces.

#### Generational Garbage Collection
To optimize performance, Java segregates the Heap memory into three logical spaces based on the empirical observation that **most objects die young** (Weak Generational Hypothesis):

1.  **Young Generation**:
    *   **Eden Space**: Where new objects are initially created.
    *   **Survivor Spaces (S0 & S1)**: Objects that survive a Young GC (called **Minor GC**) are moved here.
2.  **Old (Tenured) Generation**:
    *   Holds long-lived objects. If objects survive multiple rounds of Minor GC in the Young Generation, they are promoted here.
    *   GC here is called **Major GC** (or Full GC) and is typically slower.
3.  **Permanent Generation / Metaspace**:
    *   Stores class metadata, static variables, and constants. Since Java 8, it resides in native memory under the name **Metaspace**.

#### Common JVM GC Collectors
*   **Serial GC**: Single-threaded collector, good for small applications.
*   **Parallel GC (Throughput Collector)**: Uses multiple threads for GC to optimize application throughput.
*   **G1 (Garbage First) GC**: Divides the heap into regions, minimizing pause times while maintaining high throughput. The default in newer Java versions.
*   **ZGC (Z Garbage Collector)**: Ultra-low latency collector designed for massive heaps (terabytes) with pausing times under a millisecond.

#### Can we force GC?
Developers can request garbage collection using `System.gc()` or `Runtime.getRuntime().gc()`. However, **this is only a hint** to the JVM. The JVM determines the optimal time to execute GC and is not guaranteed to run immediately. Calling it in production is discouraged as it can trigger latency spikes.', '**Garbage Collection (GC - Bộ dọn rác)** trong Java là một tiến trình tự động được quản lý bởi JVM để giải phóng bộ nhớ Heap bị chiếm bởi các đối tượng không còn được sử dụng (không thể chạm tới - unreachable). Khác với C/C++ nơi lập trình viên phải tự giải phóng bộ nhớ thủ công bằng `free()` hay `delete`, Java tự động hóa việc này để giúp hạn chế rò rỉ bộ nhớ và giảm tải áp lực cho nhà phát triển.

#### Nguyên lý hoạt động: Quy trình cơ bản
GC sử dụng thuật toán phân tích tính tiếp cận được (**Reachability Analysis**). Một đối tượng được coi là "rác" và đủ điều kiện bị dọn dẹp khi nó không còn bất kỳ đường tham chiếu nào dẫn tới từ các **GC Roots** (ví dụ: biến trong ngăn xếp của luồng đang chạy, biến static toàn cục).

Quy trình chuẩn sử dụng mô hình **Mark-and-Sweep (Đánh dấu và quét)**:
1.  **Đánh dấu (Marking)**: GC bắt đầu từ các GC Roots, duyệt qua đồ thị đối tượng và đánh dấu các đối tượng còn hoạt động là "còn sống".
2.  **Quét (Sweeping)**: Xác định các đối tượng không được đánh dấu và giải phóng vùng nhớ của chúng.
3.  **Nén bộ nhớ (Compacting - Tùy chọn)**: Dồn các đối tượng còn sống lại gần nhau nhằm chống phân mảnh bộ nhớ.

#### Phân chia thế hệ bộ nhớ Heap (Generational GC)
Để tối ưu hóa hiệu năng, JVM chia bộ nhớ Heap thành các phân vùng dựa trên giả thuyết: **hầu hết các đối tượng đều có vòng đời rất ngắn** (Weak Generational Hypothesis):

1.  **Young Generation (Thế hệ trẻ)**:
    *   **Eden Space**: Vùng chứa các đối tượng vừa mới được khởi tạo bằng từ khóa `new`.
    *   **Survivor Spaces (S0 & S1)**: Các đối tượng sống sót qua các đợt dọn rác thế hệ trẻ (**Minor GC**) được chuyển sang đây.
2.  **Old / Tenured Generation (Thế hệ già)**:
    *   Lưu trữ các đối tượng có tuổi thọ cao. Khi một đối tượng tồn tại qua nhiều chu kỳ Minor GC ở thế hệ trẻ, nó sẽ được thăng cấp (promoted) sang vùng này.
    *   Quá trình dọn rác ở đây gọi là **Major GC** hoặc **Full GC**, thường mất nhiều thời gian hơn.
3.  **Metaspace (trước đây là PermGen)**:
    *   Lưu trữ siêu dữ liệu của Class (metadata), hằng số và các biến static. Kể từ Java 8, vùng nhớ này được lưu ở bộ nhớ hệ thống (native memory) với tên gọi **Metaspace**.

#### Các bộ dọn rác (GC Collectors) phổ biến
*   **Serial GC**: Sử dụng một luồng đơn để dọn rác, phù hợp ứng dụng nhỏ gọn, ít bộ nhớ.
*   **Parallel GC**: Sử dụng đa luồng để dọn rác giúp tối ưu hóa hiệu suất xử lý (throughput) của ứng dụng.
*   **G1 (Garbage First) GC**: Chia bộ nhớ Heap thành nhiều vùng nhỏ, ưu tiên dọn rác ở những vùng chứa nhiều rác nhất nhằm giảm thiểu thời gian dừng ứng dụng. Đây là cấu hình mặc định từ Java 9.
*   **ZGC (Z Garbage Collector)**: Bộ dọn rác có độ trễ cực thấp (dưới 1ms), thiết kế cho các hệ thống sử dụng lượng RAM cực lớn (hàng Terabyte).

#### Có thể ép buộc GC chạy được không?
Lập trình viên có thể đề xuất chạy dọn rác thông qua `System.gc()` hoặc `Runtime.getRuntime().gc()`. Tuy nhiên, đây **chỉ là một lời gợi ý** gửi đến JVM. JVM sẽ tự quyết định thời điểm thực hiện GC và không có gì đảm bảo nó sẽ chạy ngay lập tức. Việc gọi trực tiếp hàm này trong code production là không nên vì có thể gây gián đoạn hệ thống.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-28', 'Java', 'Java', 'Senior', 'What causes a memory leak in a Java application?', 'Những nguyên nhân nào gây ra rò rỉ bộ nhớ (memory leak) trong ứng dụng Java?', 'A **Memory Leak** in Java occurs when objects that are no longer needed by the application are kept in the Heap memory because they are still reachable via active references. Since the Garbage Collector (GC) only removes objects that have no references (unreachable), these unused objects accumulate, eventually causing a `java.lang.OutOfMemoryError (OOM)`.

#### Common Causes of Memory Leaks

1.  **Static References**:
    Static variables belong to the class level and are loaded into memory as long as the class is loaded. If a static collection (e.g., `List` or `Map`) is used to store data and is never cleaned, those objects will never be garbage collected.
    ```java
    public class MemoryLeakDemo {
        // This list will grow indefinitely and never be cleaned
        public static final List<Object> leakList = new ArrayList<>();
        
        public void addData(Object data) {
            leakList.add(data);
        }
    }
    ```

2.  **Unclosed Resources**:
    Failing to close database connections, network sockets, input/output streams, or file handles keeps their underlying system buffers in memory.
    *   *Solution*: Always use the **try-with-resources** block introduced in Java 7 for classes implementing `AutoCloseable`.
    ```java
    try (BufferedReader br = new BufferedReader(new FileReader("file.txt"))) {
        // Read file
    } catch (IOException e) { ... } // Automatically closed
    ```

3.  **Improper `equals()` and `hashCode()` Implementation**:
    When using custom objects as keys in a hash-based collection (like `HashMap` or `HashSet`), failing to override `equals()` and `hashCode()` correctly makes it impossible to locate the keys for removal. Over time, duplicate keys are added, leading to a memory leak.

4.  **Inner Classes (Non-Static)**:
    A non-static inner class holds an implicit reference to its outer class instance. If the inner class instance persists longer than the outer class (e.g., in a thread pool or listener registration), it prevents the outer class from being garbage collected.
    *   *Solution*: Declare inner classes as `static` if they do not need to access members of the outer class.

5.  **ThreadLocal Variables**:
    `ThreadLocal` stores data unique to the current thread. In application servers that reuse threads via thread pools (e.g., Tomcat), if `ThreadLocal.remove()` is not called, the data persists even after the request lifecycle ends, leaking memory across thread reuse.
    ```java
    try {
        threadLocalContext.set(context);
        // Business logic
    } finally {
        threadLocalContext.remove(); // Essential to prevent leak
    }
    ```

6.  **Unregistered Listeners and Callbacks**:
    Registering listeners (e.g., event listeners or observers) without de-registering them when the target object is destroyed creates a strong reference loop, pinning the target in memory.

#### Diagnostics & Monitoring Tools
To detect and resolve memory leaks in production:
*   Use APM tools (Dynatrace, New Relic) or profilers (VisualVM, JProfiler, YourKit).
*   Analyze Heap Dumps using tools like Eclipse Memory Analyzer (MAT).
*   Monitor JVM flags like `-XX:+HeapDumpOnOutOfMemoryError` to auto-export heap memory state on failure.', 'Hiện tượng **Rò rỉ bộ nhớ (Memory Leak)** trong Java xảy ra khi các đối tượng không còn được ứng dụng sử dụng nhưng vẫn tiếp tục tồn tại trong bộ nhớ Heap do chúng vẫn bị tham chiếu bởi các đối tượng đang hoạt động khác. Vì Garbage Collector (GC) chỉ dọn dẹp các đối tượng không còn tham chiếu nào (unreachable), nên các đối tượng dư thừa này tích tụ dần theo thời gian, cuối cùng dẫn tới lỗi nghẽn bộ nhớ `java.lang.OutOfMemoryError (OOM)`.

#### Các nguyên nhân phổ biến gây rò rỉ bộ nhớ

1.  **Sử dụng biến Static chứa dữ liệu**:
    Các biến static thuộc cấp độ lớp và tồn tại suốt vòng đời của class trong JVM. Nếu một tập hợp static (như `List` hoặc `Map`) được sử dụng để lưu trữ dữ liệu nhưng không bao giờ được xóa bớt phần tử, các đối tượng trong đó sẽ không bao giờ được giải phóng.
    ```java
    public class MemoryLeakDemo {
        // List static này sẽ phình to liên tục và không bao giờ được giải phóng tự động
        public static final List<Object> leakList = new ArrayList<>();
        
        public void addData(Object data) {
            leakList.add(data);
        }
    }
    ```

2.  **Không đóng tài nguyên hệ thống (Unclosed Resources)**:
    Việc không đóng các kết nối cơ sở dữ liệu, Socket mạng, luồng đọc/ghi file (`InputStream`/`OutputStream`) sẽ khiến hệ thống tiếp tục giữ bộ đệm liên quan của chúng trong RAM.
    *   *Giải pháp*: Luôn luôn sử dụng khối **try-with-resources** (từ Java 7 trở đi) đối với bất kỳ lớp nào triển khai interface `AutoCloseable`.
    ```java
    try (BufferedReader br = new BufferedReader(new FileReader("file.txt"))) {
        // Đọc dữ liệu
    } catch (IOException e) { ... } // Tự động đóng tài nguyên khi ra khỏi khối try
    ```

3.  **Không ghi đè hoặc ghi đè sai phương thức `equals()` và `hashCode()`**:
    Khi sử dụng các đối tượng tùy chỉnh làm Key trong các Collection dạng Hash (như `HashMap` hoặc `HashSet`), nếu không định nghĩa đúng `equals()` và `hashCode()`, hệ thống sẽ không thể đối chiếu để tìm ra key cần cập nhật hoặc xóa bỏ. Điều này làm gia tăng trùng lặp dữ liệu không kiểm soát được trong HashMap.

4.  **Sử dụng Inner Class không phải Static**:
    Một inner class (lớp nội bộ) không-static sẽ giữ một tham chiếu ngầm định (implicit reference) đến thực thể của outer class (lớp bao bọc). Nếu thực thể inner class tồn tại lâu hơn outer class (ví dụ: trong một luồng chạy nền), nó sẽ kéo theo outer class không thể bị dọn rác.
    *   *Giải pháp*: Khai báo các lớp nội bộ là `static` nếu chúng không cần truy cập trực tiếp các thành viên của outer class.

5.  **Lạm dụng ThreadLocal mà không xóa bỏ**:
    `ThreadLocal` lưu trữ dữ liệu riêng cho từng thread. Trong các ứng dụng Web sử dụng cơ chế Thread Pool (như Tomcat tái sử dụng thread), nếu không gọi `ThreadLocal.remove()` sau khi xử lý xong request, dữ liệu sẽ tiếp tục nằm lại trong thread đó mãi mãi, gây rò rỉ bộ nhớ.
    ```java
    try {
        threadLocalContext.set(context);
        // Xử lý logic
    } finally {
        threadLocalContext.remove(); // Bắt buộc phải có để phòng ngừa rò rỉ bộ nhớ
    }
    ```

6.  **Đăng ký Listener/Callback mà không hủy đăng ký (Deregister)**:
    Khi đăng ký các trình lắng nghe sự kiện (listeners hoặc observers) nhưng không hủy đăng ký khi đối tượng tương ứng bị phá hủy, đối tượng nguồn sẽ tiếp tục giữ tham chiếu đến chúng.

#### Công cụ chẩn đoán và khắc phục
*   Sử dụng các công cụ Profiler như VisualVM, JProfiler, hoặc YourKit để theo dõi trực quan bộ nhớ.
*   Phân tích tập tin kết xuất bộ nhớ (Heap Dump) bằng công cụ Eclipse Memory Analyzer (MAT).
*   Cấu hình cờ JVM `-XX:+HeapDumpOnOutOfMemoryError` để tự động xuất file Heap Dump khi ứng dụng gặp sự cố sập nguồn do hết bộ nhớ.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-29', 'Java', 'Java', 'Junior', 'What is a thread in Java?', 'Thread (luồng) trong Java là gì?', 'A **Thread** is the smallest unit of execution within a program. In Java, threads enable concurrent execution, meaning a program can run multiple tasks or sub-processes simultaneously, sharing memory and resource spaces.

#### Key Characteristics of Threads in Java
1.  **Lightweight**: Threads are lightweight compared to processes, consuming fewer OS resources during creation and context switching.
2.  **Shared Memory Space**: All threads of a single process share the same Heap memory, static variables, and class definitions. However, each thread maintains its own private Stack, program counter (PC), and local variables.
3.  **JVM Thread Model**: Java threads map directly to native operating system threads.

#### Creating a Thread in Java
There are two primary ways to create and start a thread in Java:

##### 1. Implementing the `Runnable` Interface (Recommended)
This approach is preferred because Java only supports single class inheritance, but allows implementing multiple interfaces.
```java
public class MyRunnable implements Runnable {
    @Override
    public void run() {
        System.out.println("Thread is running (Runnable): " + Thread.currentThread().getName());
    }

    public static void main(String[] args) {
        Thread thread = new Thread(new MyRunnable());
        thread.start(); // Initiates execution, calling run() asynchronously
    }
}
```

##### 2. Extending the `Thread` Class
```java
public class MyThread extends Thread {
    @Override
    public void run() {
        System.out.println("Thread is running (Thread class): " + getName());
    }

    public static void main(String[] args) {
        MyThread thread = new MyThread();
        thread.start(); // Starts the thread
    }
}
```

#### Thread States (Lifecycle)
A Java thread has a lifecycle governed by the following states defined in `Thread.State`:
*   **NEW**: A thread is created but not yet started (before calling `start()`).
*   **RUNNABLE**: Ready to run and waiting for CPU scheduling, or currently executing.
*   **BLOCKED**: Waiting to acquire a monitor lock (e.g., entering a `synchronized` block).
*   **WAITING**: Waiting indefinitely for another thread to perform a specific action (e.g., `Object.wait()` or `Thread.join()`).
*   **TIMED_WAITING**: Waiting for a specified time period (e.g., `Thread.sleep(ms)`).
*   **TERMINATED**: The thread has finished executing its `run()` method.', '**Thread (Luồng)** là đơn vị thực thi mã độc lập nhỏ nhất bên trong một chương trình. Trong Java, luồng cho phép lập trình viên chạy đa nhiệm đồng thời (concurrency), nghĩa là chương trình có thể thực hiện nhiều nhiệm vụ hoặc tiến trình con cùng một lúc trên một vùng nhớ và tài nguyên chia sẻ.

#### Các đặc điểm chính của Luồng trong Java
1.  **Nhẹ (Lightweight)**: Luồng nhẹ hơn Tiến trình (Process) rất nhiều về lượng tài nguyên hệ điều hành tiêu thụ khi khởi tạo cũng như chi phí chuyển đổi ngữ cảnh (context switching).
2.  **Chia sẻ bộ nhớ**: Tất cả các luồng thuộc cùng một tiến trình chia sẻ chung không gian bộ nhớ Heap, biến static và định nghĩa class. Tuy nhiên, mỗi luồng sở hữu một Stack riêng tư, bộ đếm chương trình (PC register) và các biến cục bộ riêng.
3.  **Mô hình luồng JVM**: Các luồng trong Java ánh xạ trực tiếp sang các luồng vật lý của hệ điều hành.

#### Các cách tạo Luồng trong Java
Java cung cấp hai cách cơ bản để tạo lập và kích hoạt một luồng mới:

##### 1. Triển khai Interface `Runnable` (Được khuyên dùng)
Cách này tối ưu hơn vì Java chỉ hỗ trợ đơn kế thừa lớp (extends), trong khi cho phép triển khai nhiều interface cùng lúc, giúp tăng tính linh hoạt của cấu trúc code.
```java
public class MyRunnable implements Runnable {
    @Override
    public void run() {
        System.out.println("Luồng đang chạy (Runnable): " + Thread.currentThread().getName());
    }

    public static void main(String[] args) {
        Thread thread = new Thread(new MyRunnable());
        thread.start(); // Kích hoạt luồng chạy bất đồng bộ bằng cách gọi hàm run()
    }
}
```

##### 2. Kế thừa từ lớp `Thread`
```java
public class MyThread extends Thread {
    @Override
    public void run() {
        System.out.println("Luồng đang chạy (Kế thừa Thread): " + getName());
    }

    public static void main(String[] args) {
        MyThread thread = new MyThread();
        thread.start(); // Bắt đầu thực thi luồng
    }
}
```

#### Các trạng thái vòng đời của Luồng (Thread States)
Một luồng Java đi qua các trạng thái được định nghĩa trong enum `Thread.State`:
*   **NEW**: Luồng đã được khởi tạo nhưng chưa chạy (chưa gọi phương thức `start()`).
*   **RUNNABLE**: Sẵn sàng chạy và đang đợi CPU cấp lịch (scheduling) hoặc đang thực thi code.
*   **BLOCKED**: Đang chờ để lấy khóa màn hình (monitor lock) để vào khối đồng bộ hóa `synchronized`.
*   **WAITING**: Chờ không giới hạn thời gian cho đến khi một luồng khác thực hiện hành động (như `Object.wait()` hoặc `Thread.join()`).
*   **TIMED_WAITING**: Chờ có thời hạn được chỉ định trước (ví dụ: `Thread.sleep(ms)`).
*   **TERMINATED**: Luồng đã hoàn thành việc chạy phương thức `run()`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-30', 'Java', 'Java', 'Mid', 'What is the difference between a process and a thread?', 'Sự khác biệt giữa tiến trình (process) và luồng (thread) là gì?', 'Both **processes** and **threads** are units of execution in operating systems, but they differ significantly in resource allocation, memory sharing, and overhead cost.

#### 1. Process
*   **Definition**: A process is an independent execution unit that has its own program counter, memory space, and system resources. An running instance of an application (e.g., a JVM instance) is a process.
*   **Resource Allocation**: Every process is allocated its own virtual address space (Heap, Stack, code, data). Processes do not share memory directly.
*   **Inter-Process Communication (IPC)**: Because processes do not share memory, they must communicate using IPC mechanisms such as sockets, message queues, pipes, or files, which are heavy and slow.
*   **Creation & Switching Overhead**: Creating a process and switching between processes (context switching) requires significant operating system overhead because it involves updating page tables and memory maps.
*   **Fault Tolerance**: Processes are isolated. If one process crashes, it does not directly affect other processes.

#### 2. Thread
*   **Definition**: A thread is a subset of a process (a light-weight process) representing a path of execution within that process. A single process can contain multiple threads.
*   **Memory & Resource Sharing**: All threads in a process share the process''s Heap memory, code segment, and file descriptors. However, each thread has its own Stack memory and program counter (PC).
*   **Communication**: Threads can communicate directly and fast because they share the same memory space (e.g., reading/writing shared variables). However, this requires careful synchronization to avoid concurrency issues.
*   **Creation & Switching Overhead**: Creating threads and switching between them is fast and cheap since the memory mapping is not updated.
*   **Fault Tolerance**: Threads are not isolated. If one thread crashes or raises an unhandled exception that stops the JVM process, the entire process and all other threads in it will terminate.

#### Comparison Summary Table
| Feature | Process | Thread |
| :--- | :--- | :--- |
| **Definition** | An executing instance of an application. | A lightweight path of execution within a process. |
| **Memory Space** | Has its own independent memory space. | Shares the memory space of its parent process. |
| **Context Switching** | Slow and expensive. | Fast and lightweight. |
| **Communication** | Uses IPC (sockets, pipes, RPC). | Uses shared memory directly (fast but requires synchronization). |
| **Failure Impact** | Isolated; one failure does not affect others. | A crash in one thread can terminate the whole process. |
| **System Overhead** | High overhead. | Low overhead. |', 'Cả **tiến trình (process)** và **luồng (thread)** đều là các đơn vị thực thi do hệ điều hành quản lý, nhưng chúng khác nhau cơ bản về cách cấp phát tài nguyên, chia sẻ bộ nhớ và chi phí vận hành.

#### 1. Tiến trình (Process)
*   **Định nghĩa**: Là một chương trình đang chạy độc lập, sở hữu không gian địa chỉ ảo, bộ đếm lệnh và các tài nguyên riêng từ hệ điều hành. Ví dụ, mỗi máy ảo JVM đang chạy được coi là một tiến trình.
*   **Cấp phát tài nguyên**: Mỗi tiến trình có một không gian nhớ cô lập hoàn toàn (bao gồm Heap, Stack, code, data). Các tiến trình không tự ý truy cập được bộ nhớ của nhau.
*   **Giao tiếp**: Để trao đổi dữ liệu, các tiến trình phải thông qua các cơ chế IPC (Inter-Process Communication) phức tạp như Sockets, Message Queues, Pipes, hoặc Files, có tốc độ chậm và tốn chi phí.
*   **Chi phí khởi tạo & Chuyển ngữ cảnh**: Việc tạo mới và chuyển đổi ngữ cảnh (context switching) giữa các tiến trình tốn nhiều thời gian và tài nguyên CPU vì hệ điều hành phải thay đổi sơ đồ ánh xạ bộ nhớ (page tables).
*   **Khả năng cô lập lỗi**: Các tiến trình hoạt động độc lập hoàn toàn. Nếu một tiến trình bị lỗi dừng hoạt động, nó sẽ không ảnh hưởng trực tiếp đến các tiến trình khác.

#### 2. Luồng (Thread)
*   **Định nghĩa**: Là một đơn vị thực thi nhỏ nhất bên trong một tiến trình (thường được gọi là tiến trình con - lightweight process). Một tiến trình có thể có nhiều luồng chạy song song.
*   **Chia sẻ bộ nhớ**: Tất cả các luồng trong cùng một tiến trình chia sẻ chung vùng nhớ Heap, tài nguyên hệ thống (file descriptors), và mã nguồn. Tuy nhiên, mỗi luồng có ngăn xếp Stack và bộ đếm chương trình (PC) riêng.
*   **Giao tiếp**: Các luồng giao tiếp với nhau cực kỳ nhanh và đơn giản bằng cách đọc/ghi trực tiếp vào vùng nhớ dùng chung. Dù vậy, điều này đòi hỏi lập trình viên phải thực hiện đồng bộ hóa (synchronize) để tránh xung đột dữ liệu.
*   **Chi phí khởi tạo & Chuyển ngữ cảnh**: Khởi tạo luồng và chuyển đổi luồng rất nhanh và tiết kiệm tài nguyên CPU.
*   **Khả năng cô lập lỗi**: Không cô lập lỗi. Nếu một luồng gặp lỗi nghiêm trọng (như ngoại lệ chưa được xử lý dẫn tới sập JVM), toàn bộ tiến trình và các luồng khác cũng sẽ bị chấm dứt theo.

#### Bảng so sánh tóm tắt
| Đặc điểm | Tiến trình (Process) | Luồng (Thread) |
| :--- | :--- | :--- |
| **Định nghĩa** | Một chương trình đang thực thi trên hệ điều hành. | Một tuyến chạy lệnh độc lập nằm trong tiến trình. |
| **Không gian nhớ**| Độc lập, được hệ thống phân tách rõ ràng. | Chung vùng Heap và tài nguyên của tiến trình cha. |
| **Chuyển ngữ cảnh**| Chậm và tốn nhiều tài nguyên CPU. | Nhanh và tiêu tốn ít tài nguyên hơn. |
| **Cơ chế giao tiếp**| Qua IPC (Sockets, Pipes, RPC). | Trực tiếp qua bộ nhớ dùng chung (Shared Memory). |
| **Mức độ ảnh hưởng lỗi**| Độc lập; tiến trình này sập không làm sập tiến trình kia. | Một luồng sập có thể dẫn đến việc toàn bộ tiến trình dừng hoạt động. |
| **Chi phí hệ thống**| Cao (nặng). | Thấp (nhẹ). |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-31', 'Java', 'Java', 'Mid', 'What is a race condition?', 'Race condition (điều kiện tranh chấp) là gì?', 'A **Race Condition** is a concurrency bug that occurs when two or more threads access shared data concurrently, and at least one thread modifies it. The final state of the shared data depends on the unpredictable sequence and timing of thread execution. 

#### Cause of Race Conditions
Many operations that look atomic in high-level languages like Java are actually executed as multiple steps at the CPU level. 

For example, the post-increment operation `count++` is not atomic. It consists of three distinct steps:
1.  **Read**: Read the current value of `count` from memory.
2.  **Modify**: Add `1` to the read value.
3.  **Write**: Write the updated value back to memory.

If two threads execute `count++` concurrently:
*   **Thread A** reads `count = 10`.
*   **Thread B** reads `count = 10` before Thread A writes the update.
*   Thread A increments to `11` and writes `11`.
*   Thread B increments to `11` and writes `11`.
*   *Result*: Instead of `12`, the final count is `11`. One update was lost.

#### Code Demonstration of a Race Condition
```java
public class Counter {
    private int count = 0;

    public void increment() {
        count++; // Non-atomic step: read-modify-write
    }

    public int getCount() {
        return count;
    }
}
```
If multiple threads call `increment()` simultaneously, the final value of `count` will be unpredictable and likely less than the expected value.

#### How to Prevent Race Conditions in Java

1.  **Synchronization**: Use the `synchronized` keyword to restrict access to the critical section (the code modifying shared state) to only one thread at a time.
    ```java
    public synchronized void increment() {
        count++;
    }
    ```
2.  **Locks**: Use explicit locking mechanisms from the `java.util.concurrent.locks` package (e.g., `ReentrantLock`), which offer advanced features like timeout attempts.
3.  **Atomic Variables**: Use lock-free classes from `java.util.concurrent.atomic` (e.g., `AtomicInteger`), which rely on hardware-level **Compare-And-Swap (CAS)** operations.
    ```java
    private AtomicInteger count = new AtomicInteger(0);

    public void increment() {
        count.incrementAndGet(); // Thread-safe atomic operation
    }
    ```
4.  **Immutability**: Make shared state immutable (e.g., using `final` fields). Immutable objects are inherently thread-safe since their state cannot change.', '**Race Condition (Điều kiện tranh chấp)** là một lỗi lập trình bất đồng bộ (concurrency bug) xảy ra khi có hai hoặc nhiều luồng (thread) cùng truy cập vào một vùng dữ liệu chia sẻ và ít nhất một luồng thực hiện ghi/sửa dữ liệu đó. Kết quả cuối cùng của vùng dữ liệu phụ thuộc hoàn toàn vào thứ tự thực thi ngẫu nhiên của các luồng.

#### Nguyên nhân gây ra Race Condition
Nhiều phép toán nhìn bề ngoài có vẻ là một thao tác đơn lẻ trong Java (như `count++`), nhưng thực tế ở cấp độ vi xử lý (CPU), nó được chia làm 3 bước không nguyên tử (non-atomic):
1.  **Read (Đọc)**: Đọc giá trị hiện tại của biến từ bộ nhớ.
2.  **Modify (Sửa)**: Cộng thêm `1` vào giá trị vừa đọc.
3.  **Write (Ghi)**: Ghi lại giá trị mới vào bộ nhớ.

Nếu hai luồng cùng chạy lệnh `count++` đồng thời:
*   **Luồng A** đọc giá trị `count = 10`.
*   **Luồng B** cũng đọc được `count = 10` (trước khi Luồng A kịp ghi dữ liệu mới).
*   Luồng A tăng lên `11` và ghi `11`.
*   Luồng B tăng lên `11` và ghi `11`.
*   *Kết quả*: Đáng lẽ giá trị phải là `12` sau 2 lần tăng, nhưng thực tế giá trị lưu lại chỉ là `11`. Một lần cập nhật đã bị ghi đè và mất đi.

#### Minh họa Race Condition qua Code
```java
public class Counter {
    private int count = 0;

    public void increment() {
        count++; // Thao tác không an toàn (non-atomic): đọc-sửa-ghi
    }

    public int getCount() {
        return count;
    }
}
```
Nếu nhiều luồng cùng gọi hàm `increment()` cùng lúc, kết quả của `count` sẽ không chính xác và thường thấp hơn tổng số lần thực hiện thực tế.

#### Cách phòng tránh Race Condition trong Java

1.  **Sử dụng khối đồng bộ `synchronized`**: Đảm bảo tại một thời điểm chỉ có duy nhất một luồng có quyền thực thi khối mã tương tác với dữ liệu dùng chung (Critical Section).
    ```java
    public synchronized void increment() {
        count++;
    }
    ```
2.  **Sử dụng Lock tường minh**: Sử dụng các lớp khóa từ gói `java.util.concurrent.locks` (như `ReentrantLock`), cung cấp các tính năng quản lý khóa linh hoạt hơn so với `synchronized`.
3.  **Sử dụng các biến Nguyên tử (Atomic Classes)**: Sử dụng các lớp thuộc gói `java.util.concurrent.atomic` (như `AtomicInteger`). Các lớp này sử dụng thuật toán phần cứng **Compare-And-Swap (CAS)** để thay đổi dữ liệu mà không cần khóa đồng bộ (lock-free).
    ```java
    private AtomicInteger count = new AtomicInteger(0);

    public void increment() {
        count.incrementAndGet(); // Thao tác nguyên tử, hoàn toàn an toàn đa luồng
    }
    ```
4.  **Thiết kế Đối tượng Bất biến (Immutability)**: Thiết kế các đối tượng bất biến (dùng từ khóa `final`). Đối tượng bất biến hoàn toàn an sau trong môi trường đa luồng vì giá trị của chúng không thể bị thay đổi sau khi khởi tạo.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-32', 'Java', 'Java', 'Mid', 'What does synchronized do in Java?', 'Từ khóa synchronized làm nhiệm vụ gì trong Java?', 'The `synchronized` keyword in Java is a core language feature used to control concurrent access to shared resources. It is built around an internal entity called the **monitor lock** (or intrinsic lock). 

#### Key Functions of `synchronized`
1.  **Mutual Exclusion**: Only one thread can execute a synchronized block or method at any given time on a specific monitor object. Other threads attempting to enter are blocked until the holding thread releases the lock.
2.  **Memory Visibility**: When a thread exits a synchronized block, it forces all local cache changes to be flushed to the main memory. When a thread enters a synchronized block, it invalidates its local cache and reads directly from main memory. This solves visibility issues and guarantees that threads read the most up-to-date data.

#### Usage of `synchronized`
`synchronized` can be applied in three primary ways:

##### 1. Synchronized Instance Method
The lock is acquired on the **current object instance (`this`)**.
```java
public synchronized void increment() {
    this.count++;
}
```

##### 2. Synchronized Static Method
The lock is acquired on the **Class object** (e.g., `Counter.class`). This blocks access to all synchronized static methods in that class across all instances.
```java
public static synchronized void printReport() {
    // Lock belongs to Counter.class
}
```

##### 3. Synchronized Block (Statement)
Allows locking on a **specific target object** rather than locking the entire method. This is more efficient as it reduces the size of the critical section.
```java
private final Object lock = new Object();

public void updateData() {
    // Non-critical operations run concurrently
    synchronized(lock) {
        // Critical section - executed by one thread at a time
        this.count++;
    }
}
```

#### Under the Hood: Monitor Lock
*   Every Java object has an associated monitor.
*   When entering a synchronized block, the executing thread executes a bytecode instruction called `monitorenter`.
*   When exiting (normally or via an exception), it executes `monitorexit`, releasing the lock.
*   **Reentrancy**: Java locks are reentrant. If a thread already holds a lock, it can acquire it again (e.g., a synchronized method calling another synchronized method on the same object) without deadlocking itself.', 'Từ khóa `synchronized` trong Java là một cơ chế đồng bộ hóa cốt lõi được sử dụng để kiểm soát quyền truy cập đồng thời của nhiều luồng (thread) vào các tài nguyên dùng chung. Cơ chế này hoạt động dựa trên một thực thể nội bộ được gọi là **khóa màn hình (monitor lock / intrinsic lock)**.

#### Các chức năng chính của `synchronized`
1.  **Loại trừ tương hỗ (Mutual Exclusion)**: Tại một thời điểm, chỉ có duy nhất một luồng có thể thực thi một đoạn mã (khối hoặc phương thức) được đồng bộ hóa dựa trên một đối tượng khóa cụ thể. Các luồng khác muốn truy cập sẽ bị đưa vào trạng thái chặn (Blocked) cho đến khi luồng hiện tại giải phóng khóa.
2.  **Khả năng hiển thị bộ nhớ (Memory Visibility)**: Khi một luồng rời khỏi khối `synchronized`, nó sẽ bắt buộc ghi toàn bộ dữ liệu thay đổi từ cache của luồng ra bộ nhớ chính (Main Memory). Ngược lại, khi một luồng đi vào khối, nó sẽ làm trống cache và đọc trực tiếp dữ liệu mới nhất từ bộ nhớ chính. Điều này giúp giải quyết triệt để lỗi bất đồng bộ do cache của CPU.

#### Các cách sử dụng của `synchronized`
`synchronized` có thể được áp dụng theo 3 cách chính sau:

##### 1. Đồng bộ hóa phương thức Instance (Synchronized Instance Method)
Khóa (lock) được áp dụng trên **chính thực thể đối tượng đang gọi (`this`)**.
```java
public synchronized void increment() {
    this.count++;
}
```

##### 2. Đồng bộ hóa phương thức Static (Synchronized Static Method)
Khóa được áp dụng trên **đối tượng Class** (ví dụ: `Counter.class`). Nó sẽ ngăn chặn tất cả các luồng truy cập vào bất kỳ phương thức static synchronized nào của Class đó trên mọi thực thể.
```java
public static synchronized void printReport() {
    // Khóa thuộc về Counter.class
}
```

##### 3. Khối đồng bộ hóa (Synchronized Block)
Cho phép chỉ đồng bộ trên một **đối tượng khóa tùy chọn** và giới hạn trong một phạm vi nhỏ thay vì đồng bộ toàn bộ phương thức. Đây là giải pháp tối ưu hơn vì nó làm giảm phạm vi tranh chấp (critical section).
```java
private final Object lock = new Object();

public void updateData() {
    // Các lệnh phụ trợ vẫn có thể chạy song song
    synchronized(lock) {
        // Critical section - chỉ một luồng chạy tại một thời điểm
        this.count++;
    }
}
```

#### Nguyên lý hoạt động ngầm (Monitor Lock)
*   Mỗi đối tượng Java đều đi kèm với một bộ giám sát (monitor).
*   Khi đi vào khối code synchronized, luồng sẽ thực thi chỉ thị bytecode `monitorenter` để lấy khóa.
*   Khi ra khỏi khối code (dù kết thúc bình thường hay ném ra lỗi ngoại lệ), luồng thực thi chỉ thị `monitorexit` để giải phóng khóa.
*   **Tính tái vào (Reentrancy)**: Khóa trong Java có tính chất tái vào. Một luồng đã nắm giữ khóa của một đối tượng có thể tiếp tục đi vào các khối synchronized khác sử dụng chính đối tượng khóa đó mà không lo bị tự khóa (deadlock).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-33', 'Java', 'Java', 'Mid', 'What is the difference between Runnable and Callable?', 'Sự khác biệt giữa Runnable và Callable là gì?', 'Both `Runnable` and `Callable` are functional interfaces introduced in Java to define tasks that can be executed concurrently by another thread or an `ExecutorService`. However, they differ in return value capability, exception handling, and history.

#### 1. Runnable
*   **Version**: Present since Java 1.0.
*   **Signature**: Contains a single method `public void run()`.
*   **Return Value**: Does not return any value (returns `void`).
*   **Exception Handling**: Cannot throw checked exceptions. Any exception raised inside `run()` must be caught and handled locally (using `try-catch`).
*   **Usage**: Usually passed to the `Thread` constructor or `ExecutorService.submit()`.

#### 2. Callable
*   **Version**: Introduced in Java 5 as part of the `java.util.concurrent` package.
*   **Signature**: Contains a single method `public V call() throws Exception`.
*   **Return Value**: Returns a generic result of type `V`. The caller can retrieve this result using a `Future<V>` object returned by the thread pool execution.
*   **Exception Handling**: Can throw checked exceptions directly.
*   **Usage**: Designed to work with `ExecutorService` (via `ExecutorService.submit(Callable)`).

#### Comparison Table
| Feature | Runnable | Callable |
| :--- | :--- | :--- |
| **Since** | Java 1.0 | Java 5 |
| **Package** | `java.lang` | `java.util.concurrent` |
| **Method** | `run()` | `call()` |
| **Return Type** | `void` | Generic Type `V` |
| **Checked Exceptions**| Cannot throw checked exceptions | Can throw checked exceptions |
| **Execution** | Via `Thread` or `ExecutorService` | Via `ExecutorService` (returns a `Future`) |

#### Code Examples

##### Runnable Implementation
```java
Runnable runnableTask = () -> {
    try {
        Thread.sleep(1000);
        System.out.println("Runnable task completed.");
    } catch (InterruptedException e) {
        e.printStackTrace();
    }
};

// Execution
Thread thread = new Thread(runnableTask);
thread.start();
```

##### Callable Implementation
```java
Callable<Integer> callableTask = () -> {
    Thread.sleep(1000);
    // Directly throws InterruptedException if occurred, no try-catch required here
    return 42;
};

// Execution via ExecutorService
ExecutorService executor = Executors.newSingleThreadExecutor();
Future<Integer> future = executor.submit(callableTask);

try {
    Integer result = future.get(); // Blocks until task completes
    System.out.println("Result from Callable: " + result);
} catch (InterruptedException | ExecutionException e) {
    e.printStackTrace();
} finally {
    executor.shutdown();
}
```', 'Cả `Runnable` và `Callable` đều là các Functional Interface trong Java được thiết kế để định nghĩa một tác vụ có thể thực thi đồng thời bởi một luồng khác hoặc thông qua `ExecutorService` (Thread Pool). Tuy nhiên, chúng có sự khác biệt rõ rệt về giá trị trả về, cách xử lý ngoại lệ và thời điểm ra đời.

#### 1. Runnable
*   **Lịch sử**: Xuất hiện từ phiên bản Java 1.0.
*   **Khai báo**: Định nghĩa duy nhất một phương thức `public void run()`.
*   **Giá trị trả về**: Không trả về bất kỳ kết quả nào (`void`).
*   **Xử lý ngoại lệ**: Không thể ném ra checked exceptions (ngoại lệ kiểm tra). Bất kỳ lỗi checked exception nào xảy ra bên trong phương thức `run()` bắt buộc phải được bao quanh bởi khối `try-catch` cục bộ.
*   **Sử dụng**: Thường được truyền vào constructor của lớp `Thread` hoặc được đẩy vào `ExecutorService.submit()`.

#### 2. Callable
*   **Lịch sử**: Được giới thiệu từ Java 5 nằm trong gói thư viện đa luồng `java.util.concurrent`.
*   **Khai báo**: Định nghĩa duy nhất một phương thức `public V call() throws Exception`.
*   **Giá trị trả về**: Trả về một kết quả kiểu Generic `V`. Người gọi có thể thu thập kết quả này bằng cách sử dụng đối tượng `Future<V>` nhận về từ việc thực thi thread pool.
*   **Xử lý ngoại lệ**: Có thể khai báo và ném ra các checked exceptions trực tiếp từ phương thức `call()`.
*   **Sử dụng**: Được thiết kế chuyên biệt để hoạt động với `ExecutorService` (thông qua `ExecutorService.submit(Callable)`).

#### Bảng so sánh
| Đặc tính | Runnable | Callable |
| :--- | :--- | :--- |
| **Phiên bản** | Java 1.0 | Java 5 |
| **Gói (Package)** | `java.lang` | `java.util.concurrent` |
| **Phương thức** | `run()` | `call()` |
| **Kiểu trả về** | `void` | Kiểu Generic `V` |
| **Ném checked exception**| Không thể | Có thể |
| **Thực thi** | Qua lớp `Thread` hoặc `ExecutorService` | Chỉ qua `ExecutorService` (trả về `Future`) |

#### Ví dụ mã nguồn

##### Ví dụ với Runnable
```java
Runnable runnableTask = () -> {
    try {
        Thread.sleep(1000);
        System.out.println("Tác vụ Runnable hoàn thành.");
    } catch (InterruptedException e) {
        e.printStackTrace();
    }
};

// Chạy tác vụ
Thread thread = new Thread(runnableTask);
thread.start();
```

##### Ví dụ với Callable
```java
Callable<Integer> callableTask = () -> {
    Thread.sleep(1000); // Có thể ném thẳng InterruptedException mà không cần try-catch
    return 42;
};

// Thực thi thông qua ExecutorService
ExecutorService executor = Executors.newSingleThreadExecutor();
Future<Integer> future = executor.submit(callableTask);

try {
    Integer result = future.get(); // Dừng luồng hiện tại và chờ kết quả
    System.out.println("Kết quả trả về từ Callable: " + result);
} catch (InterruptedException | ExecutionException e) {
    e.printStackTrace();
} finally {
    executor.shutdown();
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-34', 'Java', 'Java', 'Mid', 'What is the purpose of an ExecutorService?', 'Mục đích của ExecutorService là gì?', '`ExecutorService` is a framework provided by the `java.util.concurrent` package to simplify running tasks in asynchronous mode. Instead of manually creating, managing, and recycling thread instances (which is extremely expensive and resource-intensive), `ExecutorService` decouples task submission from task execution using thread pools.

Key benefits and purposes include:
1. **Thread Pool Management**: Reuses existing threads to eliminate the overhead of thread creation and teardown.
2. **Queueing Mechanism**: Manages tasks in a queue when all threads in the pool are busy.
3. **Task Lifecycle Management**: Supports tracking task state, retrieving results, and cancelling tasks via the `Future` and `Callable` interfaces.
4. **Graceful Shutdown**: Provides APIs (`shutdown()`, `shutdownNow()`, `awaitTermination()`) to cleanly stop thread execution and release resources.

**Code Example:**
```java
ExecutorService executor = Executors.newFixedThreadPool(10);
Future<String> future = executor.submit(() -> {
    // Perform asynchronous task
    return "Task completed";
});

try {
    String result = future.get(); // Blocks until the result is available
    System.out.println(result);
} catch (InterruptedException | ExecutionException e) {
    e.printStackTrace();
} finally {
    executor.shutdown();
}
```', '`ExecutorService` là một framework được cung cấp bởi package `java.util.concurrent` nhằm đơn giản hóa việc chạy các tác vụ ở chế độ bất đồng bộ. Thay vì khởi tạo, quản lý và thu hồi các thread một cách thủ công (việc này rất tốn tài nguyên và chi phí hệ thống), `ExecutorService` phân tách việc gửi tác vụ (task submission) ra khỏi việc thực thi tác vụ (task execution) bằng cách sử dụng các thread pool.

Các mục đích và lợi ích chính bao gồm:
1. **Quản lý Thread Pool**: Tái sử dụng các thread hiện có để giảm thiểu chi phí khởi tạo và hủy thread.
2. **Cơ chế hàng đợi (Queueing)**: Quản lý và lưu trữ các tác vụ trong hàng đợi khi tất cả các thread trong pool đều đang bận.
3. **Quản lý vòng đời tác vụ**: Hỗ trợ theo dõi trạng thái, nhận kết quả trả về hoặc hủy bỏ tác vụ thông qua các interface `Future` và `Callable`.
4. **Tắt ứng dụng an toàn (Graceful Shutdown)**: Cung cấp các API (`shutdown()`, `shutdownNow()`, `awaitTermination()`) để dừng các thread một cách sạch sẽ và giải phóng tài nguyên.

**Ví dụ Code:**
```java
ExecutorService executor = Executors.newFixedThreadPool(10);
Future<String> future = executor.submit(() -> {
    // Thực thi tác vụ bất đồng bộ
    return "Tác vụ hoàn thành";
});

try {
    String result = future.get(); // Chặn (block) cho đến khi có kết quả
    System.out.println(result);
} catch (InterruptedException | ExecutionException e) {
    e.printStackTrace();
} finally {
    executor.shutdown();
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-35', 'Java', 'Java', 'Junior', 'What is a Java Stream?', 'Java Stream là gì?', 'A Java Stream (introduced in Java 8) is a sequence of elements supporting sequential and parallel aggregate operations. It is not a data structure (like a `List` or a `Set`) and does not store data; instead, it conveys elements from a source (such as a collection, an array, or an I/O resource) through a pipeline of computational steps.

Key characteristics of Java Streams:
1. **No Storage**: Streams do not store elements; they compute elements on demand.
2. **Functional in Nature**: Operations on a stream produce a result but do not modify its source. For example, filtering a `List` produces a new Stream, leaving the original list intact.
3. **Lazy Evaluation**: Many stream operations (filtering, mapping) are lazy, meaning they are not executed until a terminal operation is invoked.
4. **Possibly Boundless**: Unlike collections, streams can be infinite (e.g., using `Stream.iterate` or `Stream.generate`).
5. **Consumable**: A stream can only be traversed once. Once a terminal operation is executed, the stream is closed and cannot be reused.

**Code Example:**
```java
List<String> names = Arrays.asList("Alice", "Bob", "Charlie");
List<String> filteredNames = names.stream()
    .filter(name -> name.startsWith("A"))
    .collect(Collectors.toList()); // Terminal operation
```', 'Java Stream (được giới thiệu từ Java 8) là một chuỗi các phần tử hỗ trợ các thao tác tổng hợp tuần tự hoặc song song. Stream không phải là một cấu trúc dữ liệu (như `List` hay `Set`) và không lưu trữ dữ liệu; thay vào đó, nó truyền tải các phần tử từ một nguồn (chẳng hạn như một collection, một mảng, hoặc một nguồn I/O) qua một đường ống (pipeline) gồm các bước tính toán.

Các đặc điểm chính của Java Stream:
1. **Không lưu trữ dữ liệu**: Stream không lưu trữ các phần tử; chúng chỉ tính toán các phần tử theo yêu cầu (on-demand).
2. **Bản chất hướng hàm (Functional)**: Các thao tác trên stream tạo ra kết quả mới chứ không làm thay đổi nguồn dữ liệu ban đầu. Ví dụ: việc lọc một `List` tạo ra một Stream mới, danh sách gốc vẫn được giữ nguyên.
3. **Đánh giá lười biếng (Lazy Evaluation)**: Nhiều thao tác trên stream (lọc, ánh xạ) mang tính lười biếng, nghĩa là chúng chỉ được thực thi khi có một thao tác cuối (terminal operation) được gọi.
4. **Có thể vô hạn**: Khác với collection, stream có thể có kích thước vô hạn (ví dụ sử dụng `Stream.iterate` hoặc `Stream.generate`).
5. **Chỉ dùng một lần (Consumable)**: Một stream chỉ có thể được duyệt qua một lần duy nhất. Sau khi thao tác cuối được thực thi, stream sẽ đóng lại và không thể tái sử dụng.

**Ví dụ Code:**
```java
List<String> names = Arrays.asList("Alice", "Bob", "Charlie");
List<String> filteredNames = names.stream()
    .filter(name -> name.startsWith("A"))
    .collect(Collectors.toList()); // Thao tác cuối
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-36', 'Java', 'Java', 'Mid', 'What is the difference between map() and flatMap() in the Stream API?', 'Sự khác biệt giữa map() và flatMap() trong Stream API là gì?', 'Both `map()` and `flatMap()` are intermediate operations in the Java Stream API, but they serve different purposes based on the structure of the data and the transformation required.

| Feature | `map()` | `flatMap()` |
| :--- | :--- | :--- |
| **Purpose** | Transforms each element of a Stream into another element of a different type. | Transforms each element of a Stream into a Stream of elements, then flattens these multiple Streams into a single Stream. |
| **Mapping Function** | Accepts a mapper function returning a single element `T -> R`. | Accepts a mapper function returning a stream `T -> Stream<R>`. |
| **Input Structure** | 1-to-1 relationship. E.g., `Stream<String>` -> `Stream<Integer>`. | 1-to-many or 1-to-0 relationship. E.g., `Stream<List<String>>` -> `Stream<String>`. |
| **Use Case** | Extracting a property (e.g., getting name from User object) or converting types. | Flattening nested collections (e.g., merging lists of tags from multiple articles into a single list of tags). |

**Code Example:**
```java
// map() example: Convert list of strings to list of their lengths
List<String> words = Arrays.asList("Java", "Stream");
List<Integer> lengths = words.stream()
    .map(String::length)
    .collect(Collectors.toList()); // [4, 6]

// flatMap() example: Flatten a list of lists of strings into a single list of strings
List<List<String>> nestedList = Arrays.asList(
    Arrays.asList("A", "B"),
    Arrays.asList("C", "D")
);
List<String> flatList = nestedList.stream()
    .flatMap(Collection::stream)
    .collect(Collectors.toList()); // ["A", "B", "C", "D"]
```', 'Cả `map()` và `flatMap()` đều là các thao tác trung gian (intermediate operations) trong Java Stream API, nhưng chúng phục vụ cho các mục đích khác nhau tùy thuộc vào cấu trúc dữ liệu và hình thức chuyển đổi yêu cầu.

| Tiêu chí | `map()` | `flatMap()` |
| :--- | :--- | :--- |
| **Mục đích** | Biến đổi từng phần tử của Stream thành một phần tử khác (có thể khác kiểu dữ liệu). | Biến đổi từng phần tử của Stream thành một Stream các phần tử khác, sau đó làm phẳng (flatten) nhiều Stream đó thành một Stream duy nhất. |
| **Hàm ánh xạ** | Nhận vào một mapper function trả về một phần tử đơn lẻ `T -> R`. | Nhận vào một mapper function trả về một stream `T -> Stream<R>`. |
| **Cấu trúc đầu vào** | Quan hệ 1-1. Ví dụ: `Stream<String>` -> `Stream<Integer>`. | Quan hệ 1-nhiều hoặc 1-không. Ví dụ: `Stream<List<String>>` -> `Stream<String>`. |
| **Trường hợp sử dụng** | Trích xuất thuộc tính (ví dụ: lấy tên từ đối tượng User) hoặc chuyển đổi kiểu dữ liệu. | Làm phẳng cấu trúc dữ liệu lồng nhau (ví dụ: gộp danh sách các tag từ nhiều bài viết thành một danh sách tag duy nhất). |

**Ví dụ Code:**
```java
// Ví dụ map(): Chuyển danh sách chuỗi thành danh sách độ dài của chúng
List<String> words = Arrays.asList("Java", "Stream");
List<Integer> lengths = words.stream()
    .map(String::length)
    .collect(Collectors.toList()); // Kết quả: [4, 6]

// Ví dụ flatMap(): Làm phẳng danh sách các danh sách chuỗi thành một danh sách chuỗi đơn lẻ
List<List<String>> nestedList = Arrays.asList(
    Arrays.asList("A", "B"),
    Arrays.asList("C", "D")
);
List<String> flatList = nestedList.stream()
    .flatMap(Collection::stream)
    .collect(Collectors.toList()); // Kết quả: ["A", "B", "C", "D"]
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-37', 'Java', 'Java', 'Mid', 'What is the difference between intermediate and terminal Stream operations?', 'Sự khác biệt giữa intermediate và terminal Stream operations là gì?', 'In the Java Stream API, operations are composed into pipelines. These operations are categorized into **Intermediate Operations** and **Terminal Operations**.

| Feature | Intermediate Operations | Terminal Operations |
| :--- | :--- | :--- |
| **Return Type** | Always returns a new `Stream` (allowing operation chaining). | Returns a non-stream result (e.g., `List`, `Optional`, primitive, or `void`). |
| **Execution** | **Lazy**: They do not perform any processing when called. They only configure the pipeline. | **Eager**: Triggers the actual processing of elements through the pipeline. |
| **State** | Can be stateless (e.g., `filter()`, `map()`) or stateful (e.g., `distinct()`, `sorted()`). | Produces the final result or side effect. |
| **Stream Lifecycle** | Keeps the stream open. | Closes the stream. The stream cannot be used again after this. |
| **Examples** | `filter()`, `map()`, `flatMap()`, `sorted()`, `distinct()`, `limit()`. | `collect()`, `forEach()`, `reduce()`, `count()`, `findAny()`, `anyMatch()`. |

**Code Example:**
```java
List<String> names = Arrays.asList("Alice", "Bob", "Charlie");

// "filter" and "map" are intermediate (lazy). Nothing happens yet.
Stream<String> nameStream = names.stream()
    .filter(name -> {
        System.out.println("Filtering: " + name);
        return name.length() > 3;
    })
    .map(name -> {
        System.out.println("Mapping: " + name);
        return name.toUpperCase();
    });

System.out.println("Stream pipeline created. Now triggering terminal operation...");

// "collect" is a terminal operation (eager). It triggers processing.
List<String> result = nameStream.collect(Collectors.toList());
```', 'Trong Java Stream API, các thao tác được sắp xếp thành các đường ống (pipeline). Các thao tác này được chia làm hai loại: **Thao tác trung gian (Intermediate Operations)** và **Thao tác cuối (Terminal Operations)**.

| Tiêu chí | Thao tác trung gian (Intermediate) | Thao tác cuối (Terminal) |
| :--- | :--- | :--- |
| **Kiểu trả về** | Luôn trả về một `Stream` mới (cho phép xâu chuỗi các thao tác). | Trả về kết quả không phải stream (ví dụ: `List`, `Optional`, kiểu nguyên thủy, hoặc `void`). |
| **Thực thi** | **Trì hoãn (Lazy)**: Không thực thi bất kỳ tính toán nào khi được gọi, chỉ thiết lập cấu hình cho pipeline. | **Kích hoạt ngay (Eager)**: Kích hoạt việc xử lý thực tế các phần tử qua pipeline. |
| **Trạng thái** | Có thể không lưu trạng thái (stateless như `filter()`, `map()`) hoặc có trạng thái (stateful như `distinct()`, `sorted()`). | Tạo ra kết quả cuối cùng hoặc tác dụng phụ (side effect). |
| **Vòng đời Stream** | Giữ cho stream tiếp tục mở. | Đóng stream lại. Không thể sử dụng lại stream sau thao tác này. |
| **Ví dụ** | `filter()`, `map()`, `flatMap()`, `sorted()`, `distinct()`, `limit()`. | `collect()`, `forEach()`, `reduce()`, `count()`, `findAny()`, `anyMatch()`. |

**Ví dụ Code:**
```java
List<String> names = Arrays.asList("Alice", "Bob", "Charlie");

// "filter" và "map" là các thao tác trung gian (lazy). Lúc này chưa có gì xảy ra.
Stream<String> nameStream = names.stream()
    .filter(name -> {
        System.out.println("Đang lọc: " + name);
        return name.length() > 3;
    })
    .map(name -> {
        System.out.println("Đang ánh xạ: " + name);
        return name.toUpperCase();
    });

System.out.println("Đường ống Stream đã tạo. Bắt đầu kích hoạt thao tác cuối...");

// "collect" là thao tác cuối (eager). Nó kích hoạt toàn bộ quá trình xử lý.
List<String> result = nameStream.collect(Collectors.toList());
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-38', 'Java', 'Java', 'Junior', 'What is Optional and when should it be used?', 'Optional là gì và khi nào nên sử dụng nó?', '`Optional<T>` (introduced in Java 8) is a container object which may or may not contain a non-null value. It is designed to model the presence or absence of a value explicitly, reducing the occurrence of `NullPointerException` (NPE) and avoiding bloated `null` checks.

**When to use Optional:**
1. **As a Method Return Type**: Use `Optional` as the return type for methods that might not be able to return a result (e.g., database lookups like `findById()`). This forces the caller to handle the empty case.
2. **To Avoid Explicit Null Checks**: Instead of writing `if (x != null)`, write expressive, fluent code using methods like `orElse()`, `orElseGet()`, `orElseThrow()`, `ifPresent()`, and `map()`.

**When NOT to use Optional:**
1. **Never use as Method Arguments**: This causes code bloat at the caller level and defeats the purpose of the API. Pass nullable objects directly, or use overloaded methods.
2. **Never use as Class Fields**: `Optional` is not `Serializable`, which can cause issues with ORMs (like Hibernate) and distributed caches.
3. **Never use for Collections**: Instead of returning `Optional<List<T>>`, return an empty collection (`Collections.emptyList()`) to avoid double-wrapping.
4. **Never wrap Primitives directly**: Use specialized primitive optionals like `OptionalInt`, `OptionalLong`, or `OptionalDouble` to avoid boxing/unboxing overhead.

**Code Example:**
```java
// Good Use Case: Method return type
public Optional<User> findUserById(String id) {
    User user = database.find(id);
    return Optional.ofNullable(user);
}

// Fluent usage
String email = findUserById("123")
    .map(User::getEmail)
    .orElse("default@example.com");

// Alternative: Throw custom exception if missing
User user = findUserById("123")
    .orElseThrow(() -> new UserNotFoundException("User not found"));
```', '`Optional<T>` (được giới thiệu từ Java 8) là một đối tượng container chứa hoặc không chứa một giá trị non-null. Mục đích của nó là biểu thị rõ ràng sự tồn tại hoặc vắng mặt của một giá trị, giúp giảm thiểu lỗi `NullPointerException` (NPE) và tránh việc viết các đoạn code kiểm tra `null` rườm rà.

**Khi nào NÊN sử dụng Optional:**
1. **Kiểu trả về của Method (Method Return Type)**: Sử dụng `Optional` làm kiểu trả về cho các phương thức có thể không tìm thấy kết quả (ví dụ: các hàm tìm kiếm trong cơ sở dữ liệu như `findById()`). Điều này buộc bên gọi phải chủ động xử lý trường hợp không có dữ liệu.
2. **Tránh kiểm tra Null thủ công**: Thay vì viết `if (x != null)`, bạn có thể sử dụng các hàm tiện ích có tính biểu đạt cao như `orElse()`, `orElseGet()`, `orElseThrow()`, `ifPresent()`, và `map()`.

**Khi nào KHÔNG NÊN sử dụng Optional:**
1. **Không dùng làm tham số của Method (Method Arguments)**: Điều này làm phức tạp hóa code của bên gọi. Hãy truyền trực tiếp giá trị có thể null hoặc sử dụng nạp chồng phương thức (overloaded methods).
2. **Không dùng làm thuộc tính của Class (Class Fields)**: `Optional` không triển khai interface `Serializable`, điều này có thể gây lỗi khi tích hợp với các ORM (như Hibernate) hoặc khi lưu cache phân tán.
3. **Không dùng với các Collection**: Thay vì trả về `Optional<List<T>>`, hãy trả về một list rỗng (`Collections.emptyList()`) để tránh việc bọc dữ liệu 2 lớp không cần thiết.
4. **Không dùng để bọc trực tiếp các kiểu dữ liệu nguyên thủy (Primitive)**: Nên sử dụng các class chuyên biệt như `OptionalInt`, `OptionalLong`, hoặc `OptionalDouble` để tránh chi phí ép kiểu (boxing/unboxing).

**Ví dụ Code:**
```java
// Trường hợp sử dụng tốt: Kiểu trả về của hàm
public Optional<User> findUserById(String id) {
    User user = database.find(id);
    return Optional.ofNullable(user);
}

// Sử dụng linh hoạt (Fluent API)
String email = findUserById("123")
    .map(User::getEmail)
    .orElse("default@example.com");

// Ném exception tùy chỉnh nếu không tìm thấy
User user = findUserById("123")
    .orElseThrow(() -> new UserNotFoundException("Không tìm thấy User"));
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-39', 'Spring Core', 'Spring Core', 'Junior', 'What is dependency injection?', 'Dependency Injection (tiêm phụ thuộc) là gì?', 'Dependency Injection (DI) is a software design pattern used to achieve Inversion of Control (IoC) between classes and their dependencies. Instead of an object constructing its own dependencies (using the `new` keyword), the required dependencies are provided (injected) by an external entity (the assembler or container, such as the Spring Framework).

**Types of Dependency Injection in Spring:**
1. **Constructor Injection**: Recommended for mandatory dependencies. Dependencies are passed through the class constructor.
2. **Setter Injection**: Useful for optional or mutable dependencies. Dependencies are provided via setter methods.
3. **Field Injection**: Injecting dependencies directly into fields using reflection (e.g., `@Autowired` on private fields). This is discouraged as it makes unit testing difficult and hides dependencies.

**Key Benefits:**
- **Loose Coupling**: Classes are not tightly bound to concrete implementations of their dependencies.
- **Improved Testability**: Dependencies can easily be mocked or stubbed for unit testing.
- **Maintainability**: Changes in dependency instantiation are handled in one place (the container configuration).

**Code Example:**
```java
// Without DI (Tight Coupling)
public class UserService {
    private UserRepository userRepository = new MySQLUserRepository(); // Hardcoded dependency
}

// With Constructor DI (Spring Boot)
@Service
public class UserService {
    private final UserRepository userRepository;

    // Spring automatically injects UserRepository implementation
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
```', 'Dependency Injection (DI - Tiêm phụ thuộc) là một design pattern được sử dụng để hiện thực hóa nguyên lý Inversion of Control (IoC - Đảo ngược điều khiển) giữa các lớp và các phụ thuộc của chúng. Thay vì một đối tượng tự khởi tạo các phụ thuộc của nó (sử dụng từ khóa `new`), các phụ thuộc cần thiết sẽ được cung cấp (tiêm) từ bên ngoài bởi một thực thể khác (như bộ lắp ráp hoặc container của Spring Framework).

**Các kiểu Dependency Injection trong Spring:**
1. **Constructor Injection (Tiêm qua Constructor)**: Được khuyến nghị sử dụng cho các phụ thuộc bắt buộc. Các phụ thuộc được truyền thông qua hàm tạo của lớp.
2. **Setter Injection (Tiêm qua Setter)**: Thích hợp cho các phụ thuộc tùy chọn (optional) hoặc có thể thay đổi. Các phụ thuộc được truyền qua phương thức setter.
3. **Field Injection (Tiêm trực tiếp vào Field)**: Tiêm phụ thuộc trực tiếp vào các thuộc tính riêng tư bằng cách sử dụng Reflection (ví dụ: dùng `@Autowired` trên private field). Phương pháp này không được khuyến khích vì gây khó khăn cho việc viết Unit Test và ẩn đi các phụ thuộc thực sự của class.

**Lợi ích chính:**
- **Giảm sự phụ thuộc (Loose Coupling)**: Các class không bị ràng buộc chặt chẽ vào các triển khai cụ thể (concrete implementations) của các phụ thuộc.
- **Dễ kiểm thử (Testability)**: Dễ dàng mock hoặc stub các phụ thuộc khi viết Unit Test.
- **Dễ bảo trì (Maintainability)**: Việc thay đổi cách khởi tạo phụ thuộc chỉ cần thực hiện ở một nơi (cấu hình của container).

**Ví dụ Code:**
```java
// Khi không sử dụng DI (Ràng buộc chặt chẽ)
public class UserService {
    private UserRepository userRepository = new MySQLUserRepository(); // Bị cố định class cụ thể
}

// Khi sử dụng Constructor DI (Spring Boot)
@Service
public class UserService {
    private final UserRepository userRepository;

    // Spring sẽ tự động tiêm class triển khai của UserRepository vào đây
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-40', 'Spring Core', 'Spring Core', 'Mid', 'What is inversion of control?', 'Inversion of Control (đảo ngược điều khiển) là gì?', 'Inversion of Control (IoC) is a design principle in software engineering by which the control of objects or portions of a program is transferred to a container or framework. It is the broad concept that defines who is in charge of managing the program flow.

Under traditional programming, the custom code is responsible for making calls to libraries and managing the lifecycle of objects (instantiation, execution, destruction). With IoC, this control is "inverted" — the framework calls the custom code and manages object lifecycles. This behavior is often referred to as the **Hollywood Principle**: *"Don''t call us, we''ll call you."*

**IoC can be achieved through several mechanisms, including:**
1. **Dependency Injection (DI)**: Injecting dependency objects into dependent objects.
2. **Service Locator Pattern**: Getting dependencies from a central registry.
3. **Template Method Pattern**: The framework defines the algorithm structure, and subclasses implement specific steps.
4. **Event-driven programming / Listeners**: Subscribing to events handled by a central event loop.

In Spring, the **Spring IoC Container** is responsible for instantiating, configuring, and assembling objects (beans), taking away the burden of object management from the developer.', 'Inversion of Control (IoC - Đảo ngược điều khiển) là một nguyên lý thiết kế trong công nghệ phần mềm, trong đó quyền kiểm soát các đối tượng hoặc các phần của chương trình được chuyển giao cho một container hoặc framework. Đây là một khái niệm rộng xác định ai là người chịu trách nhiệm quản lý luồng thực thi của chương trình.

Trong lập trình truyền thống, mã nguồn do lập trình viên viết sẽ chịu trách nhiệm gọi các thư viện và tự quản lý vòng đời của đối tượng (khởi tạo, thực thi, hủy bỏ). Với IoC, quyền kiểm soát này được "đảo ngược" — framework sẽ gọi mã nguồn của bạn và tự động quản lý vòng đời của các đối tượng. Hành vi này thường được gọi là **Hollywood Principle** (Nguyên lý Hollywood): *"Đừng gọi cho chúng tôi, chúng tôi sẽ gọi cho bạn."*

**IoC có thể được thực hiện thông qua nhiều cơ chế, bao gồm:**
1. **Dependency Injection (DI)**: Tiêm các đối tượng phụ thuộc vào các đối tượng cần chúng.
2. **Service Locator Pattern**: Lấy các phụ thuộc từ một registry trung tâm.
3. **Template Method Pattern**: Framework định nghĩa cấu trúc thuật toán và các lớp con triển khai các bước cụ thể.
4. **Lập trình hướng sự kiện / Listeners**: Đăng ký nhận các sự kiện được xử lý bởi một vòng lặp sự kiện trung tâm.

Trong Spring, **Spring IoC Container** chịu trách nhiệm khởi tạo, cấu hình và lắp ráp các đối tượng (gọi là bean), giải phóng lập trình viên khỏi gánh nặng quản lý vòng đời đối tượng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-41', 'Spring Core', 'Spring Core', 'Junior', 'What is the Spring IoC container?', 'Spring IoC container là gì?', 'The Spring IoC (Inversion of Control) container is the core component of the Spring Framework. It is responsible for instantiating, configuring, wiring, and managing the lifecycle of application objects, which are called **Beans**.

The container gets its instructions by reading configuration metadata, which can be represented in:
1. **XML Configuration files** (traditional way).
2. **Java Annotations** (e.g., `@Component`, `@Service`, `@Repository`, `@Autowired`).
3. **Java Code configuration** (classes annotated with `@Configuration` and `@Bean`).

**Core Interfaces of the Spring IoC Container:**
- **`BeanFactory`**: The basic client-facing interface providing the configuration framework and basic functionality. It supports lazy loading of beans (instantiates beans only when requested).
- **`ApplicationContext`**: A sub-interface of `BeanFactory` that adds enterprise-specific functionality. It is the most commonly used container and supports:
  - Eager instantiation of singleton beans.
  - Integration with Spring AOP features.
  - Message resource handling for internationalization (i18n).
  - Event publication/propagation.
  - Application-layer-specific contexts (such as `WebApplicationContext`).

**Workflow of IoC Container:**
1. **Loads Configuration**: Reads configuration metadata (annotations, XML, or Java Config).
2. **Creates Bean Definitions**: Converts metadata into internal `BeanDefinition` objects.
3. **Instantiates and Configures Beans**: Instantiates the beans, resolves their dependencies (DI), and injects them.
4. **Applies Lifecycle Interceptors**: Executes initialization callbacks.
5. **Provides Beans**: Supplies beans to the application when requested via dependency injection or direct lookup (`context.getBean()`).', 'Spring IoC (Inversion of Control) container là thành phần cốt lõi của Spring Framework. Nó chịu trách nhiệm khởi tạo, cấu hình, liên kết (wiring) và quản lý vòng đời của các đối tượng ứng dụng, những đối tượng này được gọi là **Beans**.

Container nhận các chỉ dẫn bằng cách đọc các siêu dữ liệu cấu hình (configuration metadata), có thể được biểu diễn dưới dạng:
1. **Cấu hình XML** (phương pháp truyền thống).
2. **Java Annotations** (ví dụ: `@Component`, `@Service`, `@Repository`, `@Autowired`).
3. **Cấu hình bằng mã Java (Java Config)** (các class được đánh dấu với `@Configuration` và `@Bean`).

**Các Interface cốt lõi của Spring IoC Container:**
- **`BeanFactory`**: Interface cơ bản nhất cung cấp khung cấu hình và các chức năng cốt lõi. Nó hỗ trợ cơ chế lazy loading (chỉ khởi tạo bean khi được yêu cầu thực tế).
- **`ApplicationContext`**: Là một interface con của `BeanFactory`, bổ sung các tính năng cấp doanh nghiệp (enterprise). Đây là container được sử dụng phổ biến nhất, hỗ trợ:
  - Khởi tạo trước (eager instantiation) đối với các singleton bean.
  - Tích hợp với tính năng Spring AOP.
  - Xử lý các tài nguyên thông điệp để hỗ trợ đa ngôn ngữ (i18n).
  - Xuất bản/truyền bá sự kiện (Event publication).
  - Cung cấp các context dành riêng cho các tầng ứng dụng (như `WebApplicationContext`).

**Quy trình hoạt động của IoC Container:**
1. **Đọc cấu hình**: Đọc cấu hình metadata từ annotations, XML hoặc Java Config.
2. **Tạo Bean Definitions**: Chuyển đổi metadata thành các đối tượng `BeanDefinition` trong nội bộ.
3. **Khởi tạo và cấu hình Bean**: Thực hiện tạo thực thể cho các bean, phân giải các phụ thuộc (DI) và tiêm chúng.
4. **Áp dụng các bộ lọc vòng đời**: Gọi các hàm callback khởi tạo (initialization callbacks).
5. **Cung cấp Bean**: Phục vụ các bean cho ứng dụng khi được yêu cầu thông qua DI hoặc tìm kiếm trực tiếp (`context.getBean()`).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-42', 'Spring Core', 'Spring Core', 'Junior', 'What is a Spring bean?', 'Spring bean là gì?', 'A Spring Bean is simply an object that is instantiated, assembled, and managed by the Spring IoC container. Beans are the backbone of any Spring-based application. Unlike ordinary Java objects (POJOs created with the `new` keyword), a Spring bean is managed throughout its entire lifecycle by the framework.

**How Beans are defined:**
- Classes decorated with stereo-type annotations like `@Component`, `@Service`, `@Repository`, or `@Controller`.
- Methods annotated with `@Bean` inside a class annotated with `@Configuration`.
- Configured in XML using the `<bean>` tag.

**Key characteristics of Spring Beans:**
1. **Managed Lifecycle**: The container handles instantiation, initialization, dependency injection, and destruction.
2. **Configuration Metadata**: Beans possess configurations such as scope, lazy-initialization flags, autowiring mode, initialization, and destruction methods.
3. **Bean Scopes**: Beans can have different lifespans and instances depending on their scope:
   - **Singleton** (Default): A single instance per Spring IoC container.
   - **Prototype**: A new instance is created every time the bean is requested.
   - **Request / Session / Application / WebSocket**: Web-aware scopes.

**Code Example:**
```java
// Defining a bean using stereotypic annotation
@Component
public class EmailService {
    public void sendEmail(String to, String body) {
        // logic
    }
}

// Defining a bean in Configuration class
@Configuration
public class AppConfig {
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
}
```', 'Spring Bean đơn giản là một đối tượng được khởi tạo, lắp ráp và quản lý bởi Spring IoC container. Các Bean đóng vai trò là xương sống của bất kỳ ứng dụng nào chạy trên nền tảng Spring. Khác với các đối tượng Java thông thường (POJO được khởi tạo bằng từ khóa `new`), một Spring Bean được quản lý toàn bộ vòng đời bởi framework.

**Cách định nghĩa các Bean:**
- Các class được đánh dấu bằng các stereotype annotation như `@Component`, `@Service`, `@Repository`, hoặc `@Controller`.
- Các method được đánh dấu với `@Bean` nằm bên trong một class được đánh dấu `@Configuration`.
- Được định nghĩa trong cấu hình XML bằng thẻ `<bean>`.

**Các đặc điểm chính của Spring Bean:**
1. **Quản lý vòng đời**: Container xử lý việc khởi tạo, thiết lập thuộc tính, tiêm phụ thuộc và hủy bỏ.
2. **Metadata cấu hình**: Các bean sở hữu các thông số cấu hình như phạm vi hoạt động (scope), chế độ khởi tạo lười biếng (lazy-initialization), chế độ tự động liên kết (autowiring mode), phương thức khởi tạo và phương thức hủy.
3. **Phạm vi của Bean (Bean Scopes)**: Các Bean có thể có thời gian sống và số lượng instance khác nhau tùy thuộc vào scope của chúng:
   - **Singleton** (Mặc định): Chỉ có duy nhất một instance cho mỗi Spring IoC container.
   - **Prototype**: Một instance mới sẽ được tạo ra mỗi khi bean được yêu cầu.
   - **Request / Session / Application / WebSocket**: Các scope dùng riêng trong môi trường Web.

**Ví dụ Code:**
```java
// Định nghĩa một bean bằng stereotype annotation
@Component
public class EmailService {
    public void sendEmail(String to, String body) {
        // Logic gửi mail
    }
}

// Định nghĩa một bean trong class Configuration
@Configuration
public class AppConfig {
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-43', 'Spring Core', 'Spring Core', 'Mid', 'How does Spring create and manage beans?', 'Spring khởi tạo và quản lý các bean như thế nào?', 'Spring creates and manages beans through a structured lifecycle managed by the **Spring IoC Container** (specifically via the `ApplicationContext`). The process goes through the following distinct phases:

1. **Resolution of Metadata**:
   Spring scans the classpath (using `@ComponentScan` or XML configurations) and reads bean definition metadata. It creates instances of `BeanDefinition` that act as blueprints containing configurations (class name, scope, constructor arguments, properties, etc.).

2. **Bean Instantiation**:
   The container instantiates the bean instance. This is done either via constructor invocation (reflection) or using a factory method.

3. **Populate Properties (Dependency Injection)**:
   Spring populates the bean''s properties and injects dependencies using reflection. If constructor injection is used, this happens during instantiation. If setter/field injection is used, it happens after instantiation.

4. **Aware Interface Execution**:
   If the bean implements `*Aware` interfaces, Spring injects container resources. For example, `BeanNameAware` injects the bean name, and `ApplicationContextAware` injects the active context.

5. **Bean Post-Processing (Before Initialization)**:
   `BeanPostProcessor` implementation methods (`postProcessBeforeInitialization()`) are invoked. This is where Spring proxies (like `@PostConstruct` annotations handling) are processed.

6. **Initialization**:
   Custom initialization methods are executed. Spring calls:
   - Methods annotated with `@PostConstruct`.
   - The `afterPropertiesSet()` method of the `InitializingBean` interface.
   - The custom `init-method` defined via `@Bean(initMethod = "...")`.

7. **Bean Post-Processing (After Initialization)**:
   `BeanPostProcessor` implementation methods (`postProcessAfterInitialization()`) are executed. This is the stage where AOP proxies (for transactions `@Transactional`, security, logging, etc.) are wrapped around the bean.

8. **Ready for Use**:
   The bean is now fully initialized, configured, and stored in the container''s registry. It is ready to be injected and used by the application.

9. **Destruction**:
   When the application context is closed, singleton beans are destroyed. The container invokes:
   - Methods annotated with `@PreDestroy`.
   - The `destroy()` method of the `DisposableBean` interface.
   - The custom `destroy-method` defined via `@Bean(destroyMethod = "...")`.', 'Spring khởi tạo và quản lý các bean thông qua một vòng đời có cấu trúc chặt chẽ được điều hành bởi **Spring IoC Container** (cụ thể là qua `ApplicationContext`). Quy trình này trải qua các giai đoạn rõ rệt như sau:

1. **Phân giải Metadata (Định nghĩa Bean)**:
   Spring quét qua classpath (sử dụng `@ComponentScan` hoặc cấu hình XML) và đọc siêu dữ liệu định nghĩa bean. Nó tạo ra các đối tượng `BeanDefinition` đóng vai trò là bản thiết kế chứa các cấu hình (tên class, scope, tham số constructor, thuộc tính, v.v.).

2. **Khởi tạo Bean (Instantiation)**:
   Container tạo instance của bean. Quá trình này được thực hiện thông qua việc gọi constructor (sử dụng reflection) hoặc sử dụng factory method.

3. **Thiết lập thuộc tính & Tiêm phụ thuộc (Populate Properties / DI)**:
   Spring thiết lập các thuộc tính của bean và tiêm các phụ thuộc vào bằng reflection. Nếu sử dụng Constructor Injection, bước này sẽ diễn ra ngay lúc khởi tạo. Nếu sử dụng Setter/Field Injection, nó sẽ diễn ra sau khi khởi tạo.

4. **Gọi các Aware Interfaces**:
   Nếu bean triển khai các interface dạng `*Aware`, Spring sẽ tiêm tài nguyên của container vào. Ví dụ: `BeanNameAware` tiêm tên bean, `ApplicationContextAware` tiêm context đang hoạt động.

5. **Xử lý hậu kỳ (Bean Post-Processing - Trước khi khởi tạo)**:
   Các phương thức của `BeanPostProcessor` (`postProcessBeforeInitialization()`) được gọi. Đây là nơi Spring xử lý các annotation như `@PostConstruct`.

6. **Khởi tạo (Initialization)**:
   Các phương thức khởi tạo tùy chỉnh được thực thi. Spring sẽ gọi:
   - Phương thức có đánh dấu `@PostConstruct`.
   - Phương thức `afterPropertiesSet()` của interface `InitializingBean`.
   - Phương thức khởi tạo tùy chỉnh `init-method` được định nghĩa qua `@Bean(initMethod = "...")`.

7. **Xử lý hậu kỳ (Bean Post-Processing - Sau khi khởi tạo)**:
   Các phương thức của `BeanPostProcessor` (`postProcessAfterInitialization()`) được gọi. Đây là giai đoạn các proxy AOP (như `@Transactional`, bảo mật, log) được bọc xung quanh bean.

8. **Sẵn sàng sử dụng (Ready for Use)**:
   Lúc này bean đã được khởi tạo, cấu hình đầy đủ và lưu trữ trong bộ nhớ của container. Nó sẵn sàng để được tiêm và sử dụng trong ứng dụng.

9. **Hủy bỏ (Destruction)**:
   Khi application context đóng lại, các singleton bean sẽ bị hủy. Container kích hoạt:
   - Phương thức có đánh dấu `@PreDestroy`.
   - Phương thức `destroy()` của interface `DisposableBean`.
   - Phương thức hủy tùy chỉnh `destroy-method` định nghĩa qua `@Bean(destroyMethod = "...")`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-44', 'Spring Core', 'Spring Core', 'Mid', 'What is the Spring bean lifecycle?', 'Vòng đời của Spring bean là gì?', 'The Spring bean lifecycle represents the series of states and execution callbacks that a bean goes through from the moment it is defined, instantiated by the container, configured, used, and finally destroyed when the container shuts down.

Here is the step-by-step lifecycle flow of a Spring Bean:

```
[Bean Definition & Scanning]
             ↓
    [Bean Instantiation]
             ↓
 [Populate Properties / DI]
             ↓
[Aware Interfaces Execution] (e.g., BeanNameAware, ApplicationContextAware)
             ↓
[BeanPostProcessor: postProcessBeforeInitialization]
             ↓
 [Custom Init Method] (e.g., @PostConstruct, InitializingBean, init-method)
             ↓
[BeanPostProcessor: postProcessAfterInitialization] (e.g., AOP Proxies created)
             ↓
      [Bean is Active] (Ready for Use)
             ↓
 [Container Shutdown]
             ↓
[Custom Destroy Method] (e.g., @PreDestroy, DisposableBean, destroy-method)
```

**Key Interfaces and Customization hooks:**
- **`InitializingBean` & `DisposableBean`**: Interfaces that define `afterPropertiesSet()` and `destroy()` respectively.
- **`@PostConstruct` & `@PreDestroy`**: Standard JSR-250 annotations for initialization and destruction callbacks.
- **`BeanPostProcessor`**: Allows custom modification of bean instances (e.g., wrapping them in proxies) before and after initialization.
- **`BeanFactoryPostProcessor`**: Allows modification of bean definition metadata before any bean is actually instantiated.', 'Vòng đời của Spring Bean thể hiện một chuỗi các trạng thái và hàm callback thực thi mà một bean trải qua từ thời điểm nó được định nghĩa, khởi tạo bởi container, cấu hình thuộc tính, đưa vào sử dụng và cuối cùng là bị hủy bỏ khi container tắt.

Dưới đây là sơ đồ quy trình vòng đời của một Spring Bean:

```
[Định nghĩa và Quét tìm Bean]
             ↓
    [Khởi tạo đối tượng Bean]
             ↓
  [Tiêm phụ thuộc / Thiết lập thuộc tính]
             ↓
[Gọi các Aware Interfaces] (Ví dụ: BeanNameAware, ApplicationContextAware)
             ↓
[BeanPostProcessor: postProcessBeforeInitialization] (Tiền xử lý)
             ↓
 [Hàm Init tùy chỉnh] (Ví dụ: @PostConstruct, InitializingBean, init-method)
             ↓
[BeanPostProcessor: postProcessAfterInitialization] (Tạo proxy AOP)
             ↓
     [Bean sẵn sàng hoạt động] (Sử dụng trong ứng dụng)
             ↓
       [Đóng Container]
             ↓
 [Hàm Destroy tùy chỉnh] (Ví dụ: @PreDestroy, DisposableBean, destroy-method)
```

**Các Interface quan trọng và các điểm móc nối (Hooks):**
- **`InitializingBean` & `DisposableBean`**: Các interface định nghĩa các phương thức tương ứng `afterPropertiesSet()` và `destroy()`.
- **`@PostConstruct` & `@PreDestroy`**: Các annotation chuẩn JSR-250 dùng cho hàm callback khởi tạo và hủy.
- **`BeanPostProcessor`**: Cho phép can thiệp và thay đổi đối tượng bean (như bọc qua một proxy) trước và sau khi hoàn tất khởi tạo.
- **`BeanFactoryPostProcessor`**: Cho phép can thiệp và sửa đổi các thông số cấu hình metadata của bean trước khi bất kỳ bean nào được thực sự khởi tạo.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-45', 'Spring Core', 'Spring Core', 'Mid', 'What are the main stages in the lifecycle of a Spring bean?', 'Các giai đoạn chính trong vòng đời của một Spring bean là gì?', 'The lifecycle of a Spring bean is managed by the Spring IoC container and can be divided into the following key phases:

### 1. Instantiation
Spring instantiates the bean object by calling its constructor or using a factory method. This is similar to calling `new ClassName()`.

### 2. Populate Properties
Spring injects all required dependencies and values into the bean''s properties (using setter injection, field injection, or constructor injection if it was not done during instantiation).

### 3. Aware Interfaces Callbacks
If the bean implements any of the `Aware` interfaces, Spring invokes the corresponding callback methods to inject container-internal metadata:
- `BeanNameAware`: Sets the bean name in the creating container.
- `BeanClassLoaderAware`: Supplies the class loader to the bean instance.
- `BeanFactoryAware`: Supplies the owning factory instance.
- `ApplicationContextAware` (and other environment awares): Supplies the `ApplicationContext` (handled via `ApplicationContextAwareProcessor` which is a `BeanPostProcessor`).

### 4. BeanPostProcessor - Before Initialization
Any custom implementations of the `BeanPostProcessor` interface will have their `postProcessBeforeInitialization()` method invoked. This is where annotations like `@PostConstruct` are processed.

### 5. Initialization
Spring executes the initialization logic in the following order:
- **`@PostConstruct`**: The annotated method is called.
- **`InitializingBean` interface**: The `afterPropertiesSet()` method is called.
- **Custom `init-method`**: The method configured via `@Bean(initMethod = "...")` or XML configuration is executed.

### 6. BeanPostProcessor - After Initialization
The `postProcessAfterInitialization()` method of all `BeanPostProcessor`s is called. This is the stage where Spring AOP dynamic proxies are created, wrapping the original bean if it needs aspect-oriented enhancements.

### 7. Ready for Use
The bean is now fully initialized, configured, and managed by the container. It is ready to be injected into other components or retrieved via `ApplicationContext.getBean()`.

### 8. Destruction
When the `ApplicationContext` is closed, singleton beans undergo destruction in the following order:
- **`@PreDestroy`**: The annotated method is called.
- **`DisposableBean` interface**: The `destroy()` method is called.
- **Custom `destroy-method`**: The method configured via `@Bean(destroyMethod = "...")` or XML configuration is executed.

> [!NOTE]
> Spring does not manage the destruction lifecycle of **prototype**-scoped beans. Only **singleton** beans have their destruction callbacks managed by the container.', 'Vòng đời của một Spring bean được quản lý bởi Spring IoC container và có thể được chia thành các giai đoạn chính sau:

### 1. Khởi tạo (Instantiation)
Spring khởi tạo đối tượng bean bằng cách gọi constructor của class hoặc sử dụng một factory method. Giai đoạn này tương ứng với việc gọi `new ClassName()`.

### 2. Thiết lập thuộc tính (Populate Properties)
Spring thực hiện Dependency Injection (tiêm phụ thuộc) để thiết lập các giá trị và dependency cần thiết cho bean (thông qua setter, field injection hoặc constructor injection nếu chưa làm ở bước 1).

### 3. Gọi các Aware Interfaces
Nếu bean triển khai bất kỳ interface thuộc nhóm `Aware` nào, Spring sẽ gọi các callback tương ứng để truyền siêu dữ liệu nội bộ của container vào bean:
- `BeanNameAware`: Truyền tên định danh của bean trong container.
- `BeanClassLoaderAware`: Truyền ClassLoader được sử dụng để nạp bean.
- `BeanFactoryAware`: Truyền thực thể `BeanFactory` đang quản lý bean.
- `ApplicationContextAware`: Truyền đối tượng `ApplicationContext` (thực chất bước này được xử lý bởi `ApplicationContextAwareProcessor` vốn là một `BeanPostProcessor`).

### 4. BeanPostProcessor - Trước khi Khởi tạo (Before Initialization)
Spring sẽ gọi phương thức `postProcessBeforeInitialization()` của tất cả các `BeanPostProcessor` đã đăng ký. Đây là lúc các annotation như `@PostConstruct` được quét và xử lý.

### 5. Khởi tạo (Initialization)
Spring thực hiện các logic khởi tạo tùy chỉnh theo thứ tự ưu tiên sau:
- **`@PostConstruct`**: Phương thức được đánh dấu bằng annotation này được gọi.
- **`InitializingBean` interface**: Gọi phương thức `afterPropertiesSet()` của interface này.
- **Custom `init-method`**: Phương thức được cấu hình qua `@Bean(initMethod = "...")` hoặc XML config được thực thi.

### 6. BeanPostProcessor - Sau khi Khởi tạo (After Initialization)
Spring gọi phương thức `postProcessAfterInitialization()` của các `BeanPostProcessor`. Đây là giai đoạn Spring tạo ra các AOP proxy (nếu có) để bao bọc bean gốc.

### 7. Sẵn sàng sử dụng (Ready for Use)
Bean đã được khởi tạo hoàn chỉnh và nằm dưới sự quản lý của IoC container, sẵn sàng để inject vào các class khác hoặc truy xuất qua `ApplicationContext.getBean()`.

### 8. Hủy bỏ (Destruction)
Khi `ApplicationContext` bị đóng (shutdown), các singleton bean sẽ đi vào giai đoạn hủy theo thứ tự:
- **`@PreDestroy`**: Gọi phương thức được đánh dấu bằng annotation này.
- **`DisposableBean` interface**: Gọi phương thức `destroy()` của interface này.
- **Custom `destroy-method`**: Gọi phương thức cấu hình qua `@Bean(destroyMethod = "...")` hoặc XML config.

> [!NOTE]
> Spring chỉ quản lý vòng đời hủy bỏ của các bean có scope là **singleton**. Đối với **prototype** beans, container bàn giao thực thể cho client và không chịu trách nhiệm giải phóng/hủy bỏ chúng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-46', 'Spring Core', 'Spring Core', 'Junior', 'What are @PostConstruct and @PreDestroy used for?', 'Các annotation @PostConstruct và @PreDestroy được sử dụng để làm gì?', '`@PostConstruct` and `@PreDestroy` are Jakarta EE (formerly Java EE) annotations used to define lifecycle callbacks for Spring-managed beans. They provide a clean, declarative way to perform initialization and cleanup tasks.

### 1. `@PostConstruct`
- **Purpose**: Annotates a method that must run exactly once after Spring has completed dependency injection (setting all bean properties).
- **Common Uses**: Loading initial database data, warming up caches, establishing connections, or validating that mandatory fields have been correctly injected.
- **Why not use the constructor?**: In Java, when a constructor runs, dependencies injected via `@Autowired` fields or setter methods are still `null`. `@PostConstruct` ensures all dependencies are fully injected and ready to use.

### 2. `@PreDestroy`
- **Purpose**: Annotates a method that runs just before the Spring container destroys the bean (typically when the application context is shutting down).
- **Common Uses**: Releasing resources gracefully, such as closing database connection pools, shutting down background thread pools, or saving state before termination.

### Key Rules for both annotations:
- The annotated method **must not** have any parameters.
- The return type **must** be `void`.
- The method can have any access modifier (public, protected, package-private, private).
- The method **must not** throw checked exceptions, though it can throw runtime exceptions (which might halt application startup if thrown inside `@PostConstruct`).

```java
@Component
public class DatabaseConnector {
    private Connection connection;

    @PostConstruct
    public void init() {
        // Executed after dependency injection
        this.connection = DriverManager.getConnection("jdbc:mysql://...");
    }

    @PreDestroy
    public void cleanup() {
        // Executed before container discards the bean
        if (this.connection != null) {
            this.connection.close();
        }
    }
}
```', '`@PostConstruct` và `@PreDestroy` là các annotation tiêu chuẩn của Jakarta EE (trước đây là Java EE) dùng để định nghĩa các hàm callback trong vòng đời của Spring-managed bean. Chúng mang lại giải pháp khai báo gọn gàng để thực hiện các nhiệm vụ khởi tạo và dọn dẹp.

### 1. `@PostConstruct`
- **Mục đích**: Đánh dấu phương thức sẽ chạy duy nhất một lần ngay sau khi Spring hoàn thành việc tiêm phụ thuộc (dependency injection) cho tất cả các thuộc tính của bean.
- **Ứng dụng phổ biến**: Nạp trước dữ liệu CSDL, làm nóng bộ nhớ đệm (cache warm-up), thiết lập các kết nối cần thiết, hoặc xác thực xem các trường bắt buộc đã được tiêm đúng hay chưa.
- **Tại sao không làm ở constructor?**: Trong Java, tại thời điểm constructor chạy, các dependency được tiêm qua `@Autowired` dạng field hoặc setter vẫn chưa được nạp (vẫn bằng `null`). `@PostConstruct` đảm bảo mọi phụ thuộc đã sẵn sàng để sử dụng.

### 2. `@PreDestroy`
- **Mục đích**: Đánh dấu phương thức sẽ chạy ngay trước khi Spring container hủy bỏ bean (thường xảy ra khi ứng dụng tắt/đóng ApplicationContext).
- **Ứng dụng phổ biến**: Giải phóng tài nguyên một cách an toàn (gracefully), ví dụ như đóng các kết nối CSDL, dừng các luồng chạy ngầm (thread pools), hoặc lưu lại trạng thái trước khi thoát ứng dụng.

### Các quy tắc quan trọng cho cả hai annotation:
- Phương thức được đánh dấu **không được** nhận bất kỳ tham số nào.
- Kiểu trả về bắt buộc phải là **`void`**.
- Phương thức có thể dùng bất kỳ access modifier nào (public, protected, default, hoặc private).
- Phương thức **không được** ném ra checked exception, nhưng có thể ném runtime exception (có thể làm ứng dụng dừng khởi động nếu ném trong `@PostConstruct`).

```java
@Component
public class DatabaseConnector {
    private Connection connection;

    @PostConstruct
    public void init() {
        // Thực thi sau khi dependency injection hoàn tất
        this.connection = DriverManager.getConnection("jdbc:mysql://...");
    }

    @PreDestroy
    public void cleanup() {
        // Thực thi trước khi container hủy bean
        if (this.connection != null) {
            this.connection.close();
        }
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-47', 'Spring Core', 'Spring Core', 'Mid', 'What is the difference between BeanFactory and ApplicationContext?', 'Sự khác biệt giữa BeanFactory và ApplicationContext là gì?', 'Both `BeanFactory` and `ApplicationContext` are interfaces representing the Spring IoC container, but they cater to different needs in terms of features and resource utilization.

| Feature | BeanFactory | ApplicationContext |
| :--- | :--- | :--- |
| **Core Concept** | Basic IoC container containing bean definitions. | Advanced IoC container extending `BeanFactory` with enterprise features. |
| **Initialization** | **Lazy initialization** (instantiates beans only when `getBean()` is called). | **Eager initialization** (instantiates all singleton beans during startup). |
| **Weight & Memory** | Very lightweight; low memory footprint. | Heavier; consumes more memory due to pre-instantiation. |
| **Enterprise Integration** | No support for AOP configuration, message resources (i18n), or event propagation. | Full support for Spring AOP, internationalization (i18n), and application events. |
| **Automatic Registrations** | Requires manual registration of `BeanPostProcessor` and `BeanFactoryPostProcessor`. | Automatically registers `BeanPostProcessor` and `BeanFactoryPostProcessor` found in the context. |
| **Usage Scenario** | Used in lightweight systems, embedded devices, or mobile environments. | The default container for modern web and enterprise applications. |

### Summary of Hierarchy:
`ApplicationContext` inherits from `BeanFactory` through a chain of sub-interfaces:
```java
public interface ApplicationContext extends EnvironmentCapable, ListableBeanFactory, HierarchicalBeanFactory, MessageSource, ApplicationEventPublisher, ResourcePatternResolver {
    // ...
}
```
> [!TIP]
> In modern Spring and Spring Boot development, always prefer `ApplicationContext` unless you are developing on a strictly resource-constrained platform.', 'Cả `BeanFactory` và `ApplicationContext` đều là các interface đại diện cho Spring IoC container, nhưng chúng phục vụ các nhu cầu khác nhau về mặt tính năng và tối ưu hóa tài nguyên.

| Đặc tính | BeanFactory | ApplicationContext |
| :--- | :--- | :--- |
| **Khái niệm cốt lõi** | Là IoC container cơ bản nhất chứa định nghĩa các bean. | Là IoC container nâng cao, kế thừa `BeanFactory` và bổ sung các tính năng cấp doanh nghiệp. |
| **Cơ chế khởi tạo** | **Lazy initialization** (chỉ khởi tạo bean khi phương thức `getBean()` được gọi). | **Eager initialization** (tự động khởi tạo toàn bộ singleton bean ngay khi ứng dụng khởi động). |
| **Trọng lượng & Bộ nhớ** | Cực kỳ nhẹ; tốn ít tài nguyên bộ nhớ. | Nặng hơn; tiêu tốn nhiều bộ nhớ hơn do cơ chế khởi tạo sớm toàn bộ bean. |
| **Tính năng doanh nghiệp** | Không hỗ trợ cấu hình AOP, đa ngôn ngữ (i18n), hay lan truyền sự kiện (events). | Hỗ trợ đầy đủ Spring AOP, đa ngôn ngữ (MessageSource), và phát hành sự kiện (ApplicationEvent). |
| **Đăng ký bổ trợ tự động** | Phải đăng ký thủ công `BeanPostProcessor` và `BeanFactoryPostProcessor`. | Tự động phát hiện và đăng ký các `BeanPostProcessor` và `BeanFactoryPostProcessor` có sẵn. |
| **Kịch bản sử dụng** | Dùng trong các hệ thống siêu nhẹ, thiết bị nhúng hoặc ứng dụng di động. | Là container mặc định cho hầu hết ứng dụng web và ứng dụng doanh nghiệp hiện đại. |

### Tóm tắt phân cấp kế thừa:
`ApplicationContext` kế thừa gián tiếp từ `BeanFactory` thông qua một loạt các sub-interfaces:
```java
public interface ApplicationContext extends EnvironmentCapable, ListableBeanFactory, HierarchicalBeanFactory, MessageSource, ApplicationEventPublisher, ResourcePatternResolver {
    // ...
}
```
> [!TIP]
> Trong các ứng dụng Spring và Spring Boot hiện đại, bạn luôn nên ưu tiên sử dụng `ApplicationContext` trừ khi phát triển trên nền tảng cực kỳ hạn chế phần cứng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-48', 'Spring Core', 'Spring Core', 'Mid', 'What is the difference between constructor injection, setter injection, and field injection?', 'Sự khác biệt giữa constructor injection, setter injection và field injection là gì?', 'Dependency injection in Spring can be achieved through three primary methods: Constructor, Setter, and Field Injection. They differ in syntax, lifecycle, safety, and testability:

### 1. Constructor Injection
Dependencies are provided to the bean during its creation via its constructor.
- **Syntax**:
  ```java
  private final OrderRepository orderRepository;
  public OrderService(OrderRepository orderRepository) {
      this.orderRepository = orderRepository;
  }
  ```
- **Pros**: Enables immutability (`final` fields), guarantees all required dependencies are present (fails at compile-time/startup if missing), and facilitates straightforward unit tests by simply calling `new OrderService(mockRepo)`.
- **Cons**: Can lead to long parameter lists if a class has many dependencies (which is a design smell).

### 2. Setter Injection
Dependencies are injected through setter methods after the bean has been instantiated.
- **Syntax**:
  ```java
  private OrderRepository orderRepository;
  @Autowired
  public void setOrderRepository(OrderRepository orderRepository) {
      this.orderRepository = orderRepository;
  }
  ```
- **Pros**: Good for optional or changeable dependencies. Allows re-injecting dependencies dynamically during runtime.
- **Cons**: Bean fields cannot be `final`, leaving the bean mutable. The object can be in a partially initialized state if a setter is not called.

### 3. Field Injection
Dependencies are injected directly into fields using reflection, bypassing constructors and setters.
- **Syntax**:
  ```java
  @Autowired
  private OrderRepository orderRepository;
  ```
- **Pros**: Extremely concise and clean code.
- **Cons**: Hides dependencies, violates encapsulation, prevents fields from being `final`, makes unit testing difficult (requires mockito-junit or reflection to inject mock dependencies), and easily permits circular dependencies that should otherwise be resolved.', 'Dependency injection (tiêm phụ thuộc) trong Spring được thực hiện qua ba cơ chế chính: Constructor, Setter, và Field Injection. Chúng khác nhau về cú pháp, vòng đời, độ an toàn và khả năng kiểm thử:

### 1. Constructor Injection (Tiêm qua Constructor)
Các dependency được truyền vào bean khi nó được khởi tạo thông qua constructor.
- **Cú pháp**:
  ```java
  private final OrderRepository orderRepository;
  public OrderService(OrderRepository orderRepository) {
      this.orderRepository = orderRepository;
  }
  ```
- **Ưu điểm**: Cho phép khai báo các thuộc tính bất biến (`final`), đảm bảo tính toàn vẹn của đối tượng (không thể khởi tạo thành công nếu thiếu dependency), và dễ viết unit test bằng cách chỉ cần gọi `new OrderService(mockRepo)`.
- **Nhược điểm**: Có thể dẫn đến việc constructor chứa danh sách tham số quá dài nếu class có quá nhiều phụ thuộc (một dấu hiệu của lỗi thiết kế).

### 2. Setter Injection (Tiêm qua Setter)
Các dependency được truyền vào thông qua các phương thức setter sau khi đối tượng đã được khởi tạo.
- **Cú pháp**:
  ```java
  private OrderRepository orderRepository;
  @Autowired
  public void setOrderRepository(OrderRepository orderRepository) {
      this.orderRepository = orderRepository;
  }
  ```
- **Ưu điểm**: Thích hợp cho các dependency tùy chọn (optional) hoặc các thuộc tính có khả năng thay đổi cấu hình/thay thế khi chạy.
- **Nhược điểm**: Các trường phụ thuộc không thể khai báo là `final`. Đối tượng có thể rơi vào trạng thái khởi tạo dở dang (chưa gọi setter).

### 3. Field Injection (Tiêm trực tiếp vào thuộc tính)
Các dependency được tiêm trực tiếp vào thuộc tính của class thông qua cơ chế Reflection mà không cần constructor hay setter.
- **Cú pháp**:
  ```java
  @Autowired
  private OrderRepository orderRepository;
  ```
- **Ưu điểm**: Code cực kỳ ngắn gọn và sạch sẽ.
- **Nhược điểm**: Che giấu các phụ thuộc thực tế, vi phạm tính đóng gói, không thể dùng từ khóa `final`, và khiến việc viết unit test khó khăn (phải dùng mockito-junit hoặc reflection để tiêm mock). Nó cũng dễ dung túng cho các lỗi thiết kế phụ thuộc vòng (circular dependencies).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-49', 'Spring Core', 'Spring Core', 'Mid', 'Why is constructor injection generally preferred?', 'Tại sao constructor injection thường được ưu tiên lựa chọn hơn?', 'Since Spring 4.x, Constructor Injection has been the officially recommended pattern for mandatory dependencies due to the following key architectural and code-quality reasons:

### 1. Immutability
Constructor injection allows fields to be declared as `final`. Immutable components are inherently thread-safe and less prone to side-effects, making application behavior easier to reason about.

### 2. Null Safety and Compile-Time Verification
By using a constructor, it is impossible to instantiate an object in an uninitialized or partially initialized state. If a required dependency is missing at runtime, Spring will fail to start immediately (fail-fast), rather than throwing a `NullPointerException` later at runtime when the dependency is accessed.

### 3. Ease of Unit Testing
With constructor injection, classes do not rely on Spring reflection container mechanisms for instantiation. In unit tests, you can easily create instances of the class using the `new` keyword and pass mock dependencies directly:
```java
OrderService service = new OrderService(mockRepository);
```
This keeps unit tests fast and independent of Spring''s boot-up process.

### 4. Detection of Design Smells (Violating SRP)
If a class has too many dependencies, constructor injection makes it obvious by forcing a long parameter list. This acts as a feedback mechanism signaling that the class is doing too much and should be split (violating the Single Responsibility Principle).

### 5. Prevents Circular Dependencies at Startup
If Bean A requires Bean B via constructor injection, and Bean B requires Bean A, Spring detects this immediately during application startup and throws a `BeanCurrentlyInCreationException`. This forces the developer to refactor the design rather than masking the circular reference.', 'Kể từ phiên bản Spring 4.x, Constructor Injection được khuyến nghị chính thức làm mẫu thiết kế để tiêm các phụ thuộc bắt buộc nhờ những lợi ích cấu trúc và chất lượng mã nguồn vượt trội sau:

### 1. Tính bất biến (Immutability)
Constructor injection cho phép khai báo các thuộc tính là `final`. Các thành phần bất biến tự bản chất đã là thread-safe (an toàn đa luồng) và ít bị tác dụng phụ (side-effects), giúp mã nguồn dễ hiểu và ổn định hơn.

### 2. An toàn Null và Phát hiện lỗi sớm (Fail-Fast)
Sử dụng constructor ngăn chặn việc tạo ra các thực thể bị thiếu phụ thuộc hoặc khởi tạo dở dang. Nếu thiếu một phụ thuộc bắt buộc khi khởi chạy, Spring sẽ báo lỗi ngay lập tức lúc startup (fail-fast), thay vì ném ra lỗi `NullPointerException` muộn hơn khi ứng dụng đang chạy và cố truy cập thuộc tính đó.

### 3. Dễ dàng viết Unit Test
Với constructor injection, các class không bị phụ thuộc vào cơ chế phản xạ (reflection) của Spring container khi khởi tạo. Trong các bài kiểm thử đơn vị, bạn có thể tạo đối tượng đơn giản bằng từ khóa `new` và truyền mock object trực tiếp:
```java
OrderService service = new OrderService(mockRepository);
```
Giúp kiểm thử chạy nhanh và độc lập hoàn toàn với Spring context.

### 4. Cảnh báo lỗi thiết kế (Vi phạm nguyên lý đơn nhiệm SRP)
Nếu một class nhận quá nhiều phụ thuộc, constructor injection sẽ biểu hiện trực quan qua danh sách tham số rất dài. Điều này cảnh báo cho lập trình viên rằng class này đang chịu trách nhiệm quá nhiều thứ và cần được tái cấu trúc thành các class nhỏ hơn.

### 5. Phát hiện phụ thuộc vòng (Circular Dependencies) ngay lập tức
Nếu Bean A yêu cầu Bean B qua constructor và Bean B lại yêu cầu Bean A qua constructor, Spring sẽ phát hiện ra ngay lúc khởi động ứng dụng và ném ra ngoại lệ `BeanCurrentlyInCreationException`. Điều này buộc lập trình viên phải sửa đổi kiến trúc thay vì che giấu lỗi thiết kế phụ thuộc vòng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-50', 'Spring Core', 'Spring Core', 'Junior', 'What is component scanning in Spring?', 'Component scanning trong Spring là gì?', '**Component Scanning** is a mechanism in Spring that automates the registration of classes as beans in the ApplicationContext. Instead of declaring every bean manually in XML or Configuration classes, Spring scans the project packages for specific stereotype annotations and registers the matching classes.

### How It Works:
1. **Detection**: During startup, Spring scans packages recursively starting from designated directories.
2. **Stereotypes**: It looks for classes annotated with `@Component` or its specialized variants:
   - `@Service`
   - `@Repository`
   - `@Controller` / `@RestController`
   - `@Configuration`
3. **Registration**: For each class found, Spring generates a bean definition and registers it inside the IoC container.

### Enabling Component Scanning:
- **In Spring (Java Config)**: You explicitly annotate a configuration class with `@ComponentScan`:
  ```java
  @Configuration
  @ComponentScan(basePackages = "com.example.myapp")
  public class AppConfig {}
  ```
- **In Spring Boot**: You do not need to configure this manually. The `@SpringBootApplication` annotation on your main entry class is a meta-annotation that includes `@ComponentScan` implicitly:
  ```java
  @SpringBootApplication // Implicitly scans this package and all its subpackages
  public class Application {
      public static void main(String[] args) {
          SpringApplication.run(Application.class, args);
      }
  }
  ```

> [!IMPORTANT]
> Because Spring Boot scans only the package of the main application class and its subpackages, if you place beans in a completely unrelated package (e.g. `org.external.helper`), Spring will not detect them unless you explicitly add `@ComponentScan(basePackages = {"com.example", "org.external"})`.', '**Component Scanning (Quét thành phần)** là một cơ chế trong Spring giúp tự động hóa quá trình đăng ký các class làm bean vào ApplicationContext. Thay vì phải khai báo thủ công từng bean qua file XML hay các class Configuration, Spring tự động quét qua các package trong dự án để tìm các annotation đặc trưng (stereotype) và đăng ký các class phù hợp.

### Cơ chế hoạt động:
1. **Phát hiện**: Khi khởi động, Spring quét đệ quy qua các package bắt đầu từ thư mục được chỉ định.
2. **Stereotype**: Tìm kiếm các class được đánh dấu bằng `@Component` hoặc các biến thể đặc dụng của nó:
   - `@Service`
   - `@Repository`
   - `@Controller` / `@RestController`
   - `@Configuration`
3. **Đăng ký**: Với mỗi class tìm được, Spring tạo ra một định nghĩa bean (bean definition) và đăng ký nó vào IoC container.

### Cách kích hoạt Component Scanning:
- **Trong Spring thuần (Java Config)**: Cấu hình rõ ràng thông qua annotation `@ComponentScan` đặt ở class cấu hình:
  ```java
  @Configuration
  @ComponentScan(basePackages = "com.example.myapp")
  public class AppConfig {}
  ```
- **Trong Spring Boot**: Bạn không cần cấu hình thủ công. Annotation `@SpringBootApplication` đặt trên class main chạy ứng dụng đã ngầm chứa `@ComponentScan`:
  ```java
  @SpringBootApplication // Tự động quét package này và toàn bộ package con của nó
  public class Application {
      public static void main(String[] args) {
          SpringApplication.run(Application.class, args);
      }
  }
  ```

> [!IMPORTANT]
> Do mặc định Spring Boot chỉ quét package chứa class main và các subpackage của nó, nếu bạn đặt các bean trong một package hoàn toàn không liên quan (ví dụ: `org.external.helper`), Spring sẽ không phát hiện ra chúng trừ khi bạn khai báo cụ thể qua `@ComponentScan(basePackages = {"com.example", "org.external"})`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-51', 'Spring Core', 'Spring Core', 'Mid', 'What is the difference between @Component, @Service, @Repository, and @Controller?', 'Sự khác biệt giữa @Component, @Service, @Repository và @Controller là gì?', 'In Spring, `@Component`, `@Service`, `@Repository`, and `@Controller` are stereotype annotations. Technically, `@Service`, `@Repository`, and `@Controller` are specialized forms of `@Component` (meta-annotated with `@Component`), meaning they are all registered as Spring beans. However, they serve distinct architectural layers and add specific framework behaviors:

### 1. `@Component`
- **Layer**: Generic.
- **Role**: A generic stereotype for any Spring-managed component. Use this when the class does not fall into a specific architectural layer (e.g., custom utilities, configuration processors).

### 2. `@Service`
- **Layer**: Business Layer (Logic nghiệp vụ).
- **Role**: Marks class containing business rules, calculations, and coordination logic. It has no special runtime behavior added by the Spring Framework compared to `@Component`, but it indicates domain-driven design intent.

### 3. `@Repository`
- **Layer**: Data Access Layer (DAO / Persistence).
- **Role**: Indicates a class interacting with the database. Crucially, Spring applies exception translation to beans annotated with `@Repository`. It catches database-specific checked/unchecked exceptions (like `SQLException` or Hibernate exceptions) and re-throws them as subclass exceptions of Spring''s unified `DataAccessException` hierarchy.

### 4. `@Controller` (and `@RestController`)
- **Layer**: Presentation Layer (Web/API).
- **Role**: Defines handler methods for incoming HTTP requests in Spring MVC. `@RestController` combines `@Controller` and `@ResponseBody`, ensuring that the response payloads are directly serialized to JSON/XML instead of looking for MVC template views.', 'Trong Spring, `@Component`, `@Service`, `@Repository`, và `@Controller` là các stereotype annotation. Về mặt kỹ thuật, `@Service`, `@Repository`, và `@Controller` đều kế thừa từ `@Component` (được đánh dấu gián tiếp với `@Component`), điều này có nghĩa chúng đều được Spring quét và đăng ký làm bean. Tuy nhiên, chúng đại diện cho các tầng kiến trúc khác nhau và mang các hành vi đặc thù riêng biệt:

### 1. `@Component`
- **Tầng**: Chung chung (Generic).
- **Vai trò**: Đại diện cho bất kỳ thành phần nào do Spring quản lý. Sử dụng khi class của bạn không thuộc về một tầng kiến trúc cụ thể nào khác (ví dụ: các class tiện ích - Utility, helper, xử lý logic bổ trợ).

### 2. `@Service`
- **Tầng**: Tầng nghiệp vụ (Business Layer).
- **Vai trò**: Đánh dấu class chứa các quy tắc nghiệp vụ, tính toán dữ liệu và điều phối logic. Về mặt kỹ thuật, Spring Framework không thêm hành vi đặc thù nào so với `@Component`, nhưng nó chỉ rõ mục đích thiết kế của lớp đó.

### 3. `@Repository`
- **Tầng**: Tầng truy xuất dữ liệu (Data Access Layer - DAO / Persistence).
- **Vai trò**: Đánh dấu lớp giao tiếp trực tiếp với cơ sở dữ liệu. Điểm đặc biệt là Spring tự động áp dụng cơ chế dịch mã lỗi ngoại lệ (exception translation) cho các bean này. Các lỗi ngoại lệ đặc thù của database (như `SQLException` hay lỗi Hibernate) sẽ được dịch thành hệ thống ngoại lệ đồng nhất của Spring (`DataAccessException`).

### 4. `@Controller` (và `@RestController`)
- **Tầng**: Tầng hiển thị/Giao diện (Presentation Layer - Web/API).
- **Vai trò**: Định nghĩa các phương thức xử lý yêu cầu HTTP trong mô hình Spring MVC. Đối với `@RestController`, đây là sự kết hợp của `@Controller` và `@ResponseBody`, giúp dữ liệu trả về được tuần tự hóa thẳng thành JSON/XML thay vì tìm kiếm template giao diện (HTML/JSP).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-52', 'Spring Core', 'Spring Core', 'Mid', 'What is the difference between @Bean and @Component?', 'Sự khác biệt giữa @Bean và @Component là gì?', 'While both annotations are used to register beans in the Spring Container, they target different scenarios and offer different levels of control:

| Feature | `@Component` | `@Bean` |
| :--- | :--- | :--- |
| **Target Location** | Applied at the **Class** level. | Applied at the **Method** level. |
| **Registration Style** | Auto-detection via Component Scanning. | Explicit configuration in a `@Configuration` class. |
| **Source Code Access**| Requires access to the source code of the class (you must write the annotation directly inside the file). | Can be used with third-party libraries (no source code required, you instantiate and return it). |
| **Custom Logic** | Relies on Spring to instantiate using constructors. Hard to write custom initialization conditions. | Allows writing custom Java logic inside the method (conditionals, configuring attributes, custom parameters). |
| **Multiple instances**| Can only register one bean per class automatically. | Can register multiple beans of the same type by declaring different `@Bean` methods. |

### Usage Examples:

**When to use `@Component`**:
```java
@Component
public class MyService {
    // Used for classes you write yourself and want scanned automatically
}
```

**When to use `@Bean`**:
```java
@Configuration
public class AppConfig {
    @Bean
    public ObjectMapper objectMapper() {
        // We don''t own Jackson library source code, but we configure and expose it as a Spring Bean
        ObjectMapper mapper = new ObjectMapper();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        return mapper;
    }
}
```', 'Mặc dù cả hai annotation đều được dùng để đăng ký các bean vào Spring Container, nhưng chúng hướng tới các kịch bản khác nhau và cung cấp mức độ kiểm soát khác nhau:

| Đặc tính | `@Component` | `@Bean` |
| :--- | :--- | :--- |
| **Vị trí áp dụng** | Đặt ở cấp độ **Class**. | Đặt ở cấp độ **Phương thức** (Method). |
| **Cơ chế đăng ký** | Tự động phát hiện thông qua Component Scanning. | Đăng ký thủ công và hiển ngôn trong một class `@Configuration`. |
| **Quyền truy cập mã nguồn** | Đòi hỏi quyền truy cập và chỉnh sửa mã nguồn của class để gắn annotation trực tiếp. | Có thể áp dụng cho các thư viện bên thứ ba (không cần mã nguồn, bạn tự gọi constructor và trả về). |
| **Tùy biến Logic khởi tạo**| Phụ thuộc vào constructor mặc định của Spring. Khó viết logic điều kiện phức tạp. | Cho phép viết logic Java tự do trong thân phương thức (ví dụ: gán thuộc tính, tạo điều kiện tạo bean). |
| **Số lượng thực thể** | Tự động đăng ký duy nhất 1 bean cho mỗi class. | Có thể đăng ký nhiều bean có cùng kiểu dữ liệu bằng cách khai báo nhiều phương thức khác nhau. |

### Ví dụ minh họa sử dụng:

**Sử dụng `@Component` khi**:
```java
@Component
public class MyService {
    // Dành cho các class tự viết trong dự án và muốn tự động đăng ký
}
```

**Sử dụng `@Bean` khi**:
```java
@Configuration
public class AppConfig {
    @Bean
    public ObjectMapper objectMapper() {
        // Không sở hữu mã nguồn của Jackson library, nhưng cần cấu hình và khai báo làm Spring Bean
        ObjectMapper mapper = new ObjectMapper();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        return mapper;
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-53', 'Spring Core', 'Spring Core', 'Mid', 'What does @Configuration do?', 'Annotation @Configuration có vai trò gì?', 'The `@Configuration` annotation is used to flag a class as a source of bean definitions for the Spring application context. It is a key annotation in Java-based Spring configuration.

### Key Roles of `@Configuration`:

#### 1. Declaring Beans
It allows methods to be annotated with `@Bean`. Spring will execute these methods and register their return values as beans in the container.

#### 2. Singleton Guarantee through CGLIB Proxying (Inter-Bean References)
The most critical behavior of `@Configuration` is its proxying behavior. By default, `@Configuration` (which implies `proxyBeanMethods = true`) uses **CGLIB** proxying to wrap the configuration class. When a `@Bean` method calls another `@Bean` method inside the same configuration class, the proxy intercepts the call and checks if the bean has already been created. If yes, it returns the existing singleton instance from the container rather than invoking the method again and creating a new Java object.

```java
@Configuration
public class Config {
    @Bean
    public OrderService orderService() {
        // Directly calls databaseConnector(). Spring intercepts this call
        // and returns the same singleton databaseConnector instance.
        return new OrderServiceImpl(databaseConnector());
    }
    
    @Bean
    public DatabaseConnector databaseConnector() {
        return new DatabaseConnector();
    }
}
```

#### 3. Lite Mode (using `@Component` instead)
If `@Bean` methods are declared in a class annotated with `@Component` (or just a plain class) instead of `@Configuration`, Spring operates in **"Lite Mode"**. In Lite Mode, calling another `@Bean` method is just a regular Java method call. It bypasses the CGLIB proxy and returns a **new instance** every time, breaking the Singleton guarantee. Since Spring Boot 2.2, if no inter-bean references are needed, you can use `@Configuration(proxyBeanMethods = false)` to disable proxying for slightly faster startup times.', 'Annotation `@Configuration` được sử dụng để đánh dấu một lớp đóng vai trò là nguồn định nghĩa các bean cho Spring application context. Đây là trung tâm của cơ chế Java-based configuration trong Spring.

### Các vai trò cốt lõi của `@Configuration`:

#### 1. Khai báo các Bean
Nó cho phép các phương thức bên trong được đánh dấu bằng `@Bean`. Spring sẽ thực thi các phương thức này và đăng ký đối tượng trả về như là một bean trong container.

#### 2. Đảm bảo tính Singleton qua CGLIB Proxying (Tham chiếu chéo giữa các Bean)
Điểm khác biệt quan trọng nhất của `@Configuration` nằm ở cơ chế tạo proxy. Mặc định, `@Configuration` (tương đương `proxyBeanMethods = true`) sử dụng thư viện **CGLIB** để bọc class cấu hình này trong một Proxy. Khi một phương thức `@Bean` gọi trực tiếp đến một phương thức `@Bean` khác cùng class, Proxy sẽ chặn cuộc gọi đó và kiểm tra xem bean đó đã được khởi tạo trong container chưa. Nếu rồi, nó sẽ trả về thực thể singleton hiện có thay vì thực thi lại logic phương thức và tạo mới đối tượng Java thứ hai.

```java
@Configuration
public class Config {
    @Bean
    public OrderService orderService() {
        // Gọi trực tiếp databaseConnector(). Spring sẽ chặn cuộc gọi
        // và trả về chính xác thực thể singleton databaseConnector đã có.
        return new OrderServiceImpl(databaseConnector());
    }
    
    @Bean
    public DatabaseConnector databaseConnector() {
        return new DatabaseConnector();
    }
}
```

#### 3. Chế độ Lite Mode (sử dụng `@Component` thay thế)
Nếu bạn khai báo các phương thức `@Bean` trong một class chỉ được đánh dấu `@Component` (hoặc class thường) thay vì `@Configuration`, Spring sẽ chuyển sang hoạt động ở **"Lite Mode"**. Ở chế độ này, việc gọi phương thức `@Bean` khác hoạt động như lời gọi hàm Java thông thường, bỏ qua Proxy CGLIB và tạo mới một đối tượng Java khác mỗi lần gọi, làm phá vỡ tính Singleton của Bean. Kể từ Spring Boot 2.2, nếu dự án không dùng tham chiếu chéo giữa các bean, ta có thể cấu hình `@Configuration(proxyBeanMethods = false)` để tăng tốc độ startup ứng dụng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-54', 'Spring Core', 'Spring Core', 'Mid', 'What are Spring bean scopes?', 'Các bean scope trong Spring là gì?', '**Bean Scope** in Spring defines the lifecycle and visibility of a bean instance within the IoC container. Depending on the configured scope, Spring creates one or multiple instances of the bean.

Spring supports six built-in scopes (four of which are only available in a web-aware ApplicationContext):

### 1. singleton (Default)
- **Scope**: Single instance per Spring IoC container.
- **Lifecycle**: Created during application startup and destroyed when the application context shuts down. It is ideal for stateless beans (e.g., controllers, services, repositories).

### 2. prototype
- **Scope**: A new instance is created every time the bean is requested (via injection or `getBean()`).
- **Lifecycle**: Spring instantiates and configures the bean, but does not manage its destruction. Used for stateful components.

### 3. request (Web-aware only)
- **Scope**: A single instance per HTTP request lifecycle.
- **Lifecycle**: Created when a web request starts and destroyed when the request completes.

### 4. session (Web-aware only)
- **Scope**: A single instance per HTTP Session lifecycle.
- **Lifecycle**: Shared across multiple requests of the same HTTP Session. Destroyed when the session expires.

### 5. application (Web-aware only)
- **Scope**: A single instance per `ServletContext` lifecycle.
- **Lifecycle**: Shared across all web applications running in the same servlet context (similar to singleton, but tied to servlet-level scope).

### 6. websocket (Web-aware only)
- **Scope**: A single instance per WebSocket session lifecycle.

### Configuration Example:
```java
@Component
@Scope("prototype") // Or @Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class TaskHandler {}
```', '**Bean Scope (Tầm vực hoạt động)** trong Spring xác định vòng đời và khả năng hiển thị (visibility) của một thực thể bean bên trong IoC container. Tùy thuộc vào phạm vi được cấu hình, Spring sẽ quyết định tạo một hay nhiều thực thể cho bean đó.

Spring hỗ trợ 6 loại scope tích hợp sẵn (trong đó 4 scope cuối chỉ khả dụng trong Web ApplicationContext):

### 1. singleton (Mặc định)
- **Phạm vi**: Duy nhất một thực thể cho mỗi Spring IoC container.
- **Vòng đời**: Được khởi tạo khi ứng dụng bắt đầu chạy và bị hủy khi ứng dụng tắt. Rất phù hợp với các bean không lưu trạng thái (stateless) như Controller, Service, Repository.

### 2. prototype
- **Phạm vi**: Một thực thể mới được tạo ra mỗi khi bean được yêu cầu (được inject vào bean khác hoặc truy cập qua `getBean()`).
- **Vòng đời**: Spring khởi tạo và cấu hình hoàn chỉnh bean, sau đó bàn giao cho client và không quản lý vòng đời hủy bỏ của nó nữa. Phù hợp cho các thành phần lưu trạng thái (stateful).

### 3. request (Chỉ dành cho Web)
- **Phạm vi**: Một thực thể duy nhất cho mỗi vòng đời của HTTP request.
- **Vòng đời**: Được tạo ra khi bắt đầu một request và bị hủy bỏ ngay khi request đó xử lý xong.

### 4. session (Chỉ dành cho Web)
- **Phạm vi**: Một thực thể duy nhất cho mỗi vòng đời của HTTP Session.
- **Vòng đời**: Được chia sẻ chung giữa các request thuộc cùng một HTTP Session của người dùng. Bị hủy khi Session hết hạn.

### 5. application (Chỉ dành cho Web)
- **Phạm vi**: Một thực thể duy nhất cho vòng đời của `ServletContext`.
- **Vòng đời**: Được chia sẻ chung cho toàn bộ ứng dụng chạy trên cùng ServletContext (khá tương tự singleton nhưng gắn liền với phạm vi tầng Servlet).

### 6. websocket (Chỉ dành cho Web)
- **Phạm vi**: Một thực thể duy nhất gắn liền với vòng đời kết nối của một WebSocket.

### Ví dụ cấu hình:
```java
@Component
@Scope("prototype") // Hoặc @Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class TaskHandler {}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-55', 'Spring Core', 'Spring Core', 'Mid', 'What is the difference between singleton and prototype scope?', 'Sự khác biệt giữa singleton và prototype scope là gì?', 'While `singleton` and `prototype` are the two fundamental bean scopes in Spring, they differ significantly in instantiation, lifecycle management, and usage patterns:

| Feature | Singleton Scope | Prototype Scope |
| :--- | :--- | :--- |
| **Number of Instances** | Exactly **one** instance per Spring container. | A **new** instance is created on every lookup/injection. |
| **Instantiation Time** | By default, eagerly at container startup (unless annotated with `@Lazy`). | Lazily, only when requested during runtime. |
| **Lifecycle Management**| Spring manages the entire lifecycle, including destruction callbacks (e.g. `@PreDestroy`). | Spring only manages initialization; it does not track or destroy prototype beans. |
| **Statefulness** | Best suited for **stateless** beans (Services, DAO/Repositories, Controllers). | Best suited for **stateful** beans (User shopping carts, session data, file upload processing). |
| **Memory footprint** | Low, as instances are reused. | High, potential memory leaks if clients do not manually destroy them. |

### The Injection Problem: Prototype inside a Singleton
If you inject a `prototype` bean into a `singleton` bean, it will only be injected **once** when the singleton bean is instantiated at startup. Consequently, the singleton bean will end up using the same prototype instance forever, effectively neutralising the prototype scope.

#### How to solve this:
1. **`@Lookup` (Method Injection)**: Spring dynamic subclasses override a method to query the container for a new bean at runtime:
   ```java
   @Lookup
   public PrototypeBean getPrototypeBean() {
       return null; // Spring dynamic proxy overrides this return statement
   }
   ```
2. **Using `ObjectFactory<T>` / `Provider<T>`**: Forces lazy retrieval on-demand:
   ```java
   @Autowired
   private ObjectFactory<PrototypeBean> prototypeBeanFactory;
   // usage: prototypeBeanFactory.getObject();
   ```
3. **Scoped Proxy**: Annotate the prototype bean with `@Scope(value = "prototype", proxyMode = ScopedProxyMode.TARGET_CLASS)`. Spring injects a dynamic AOP proxy that fetches a fresh instance behind the scenes on every method call.', 'Dù `singleton` và `prototype` là hai scope nền tảng nhất trong Spring, chúng có những điểm khác biệt rõ ràng về mặt khởi tạo, quản lý vòng đời và mô hình lập trình:

| Đặc tính | Singleton Scope | Prototype Scope |
| :--- | :--- | :--- |
| **Số thực thể** | Duy nhất **một** instance được dùng chung trong toàn container. | Một thực thể **mới** được tạo ra mỗi khi được gọi/tiêm vào. |
| **Thời điểm khởi tạo** | Mặc định khởi tạo sớm khi start container (trừ khi đánh dấu `@Lazy`). | Khởi tạo muộn, chỉ khi được gọi đến lúc chạy ứng dụng. |
| **Quản lý vòng đời** | Spring quản lý trọn vẹn vòng đời, bao gồm các hàm hủy (như `@PreDestroy`). | Spring chỉ quản lý khâu tạo và cấu hình; không theo dõi hay hủy bỏ bean. |
| **Trạng thái (State)** | Phù hợp cho bean **không có trạng thái** (Services, Repository, Controller). | Phù hợp cho bean **lưu giữ trạng thái** (Giỏ hàng, dữ liệu session, xử lý file). |
| **Tiêu tốn bộ nhớ** | Thấp, do thực thể được dùng lại liên tục. | Cao, có nguy cơ rò rỉ bộ nhớ nếu phía client không dọn dẹp sau khi dùng. |

### Vấn đề tiêm phụ thuộc: Tiêm Prototype vào Singleton
Nếu bạn tiêm trực tiếp một bean `prototype` vào một bean `singleton`, quá trình tiêm chỉ diễn ra **một lần** khi singleton bean được khởi tạo lúc startup. Kết quả là, singleton bean sẽ giữ và dùng đi dùng lại đúng một thực thể prototype đó mãi mãi, làm mất đi ý nghĩa của prototype scope.

#### Các giải pháp xử lý:
1. **`@Lookup` (Method Injection)**: Spring sử dụng proxy động đè lên phương thức để lấy trực tiếp thực thể mới từ container:
   ```java
   @Lookup
   public PrototypeBean getPrototypeBean() {
       return null; // Spring proxy sẽ ghi đè và trả về bean mới
   }
   ```
2. **Sử dụng `ObjectFactory<T>` / `Provider<T>`**: Yêu cầu lấy thực thể mới khi cần thiết:
   ```java
   @Autowired
   private ObjectFactory<PrototypeBean> prototypeBeanFactory;
   // sử dụng: prototypeBeanFactory.getObject();
   ```
3. **Sử dụng Scoped Proxy**: Đánh dấu prototype bean bằng `@Scope(value = "prototype", proxyMode = ScopedProxyMode.TARGET_CLASS)`. Spring sẽ tiêm một proxy AOP động, proxy này sẽ âm thầm truy xuất thực thể mới mỗi khi có lời gọi phương thức.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-56', 'Spring Core', 'Spring Core', 'Mid', 'What happens when a prototype bean is injected into a singleton bean?', 'Điều gì xảy ra khi một prototype bean được inject vào một singleton bean?', 'When a prototype-scoped bean is injected into a singleton-scoped bean, the prototype bean is instantiated **only once** (when the singleton bean is instantiated and initialized). Consequently, the singleton bean will always use the same instance of the prototype bean across all subsequent requests/calls. This behaves contrary to the expected lifecycle of a prototype bean, which should produce a new instance on every request.

This issue is known as the **scoped proxy / dependency lookup problem**.

#### How to resolve this issue:

1. **Using `@Lookup` Annotation (Method Injection)**:
   Spring overrides the annotated method at runtime using CGLIB to look up the bean in the application context.
   ```java
   @Component
   public class SingletonBean {
       @Lookup
       public PrototypeBean getPrototypeBean() {
           return null; // Spring overrides this method to return a new PrototypeBean
       }
   }
   ```

2. **Using Scoped Proxies (`@Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE, proxyMode = ScopedProxyMode.TARGET_CLASS)`)**:
   Spring injects a proxy instead of the real bean. Every time a method is called on the proxy, it fetches a new instance of the prototype bean from the context.
   ```java
   @Component
   @Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE, proxyMode = ScopedProxyMode.TARGET_CLASS)
   public class PrototypeBean {
       // ...
   }
   ```

3. **Injecting `ObjectProvider<PrototypeBean>` (or `Provider<PrototypeBean>`)**:
   Allows retrieving a prototype bean instance programmatically when needed.
   ```java
   @Component
   public class SingletonBean {
       @Autowired
       private ObjectProvider<PrototypeBean> prototypeBeanProvider;

       public void process() {
           PrototypeBean bean = prototypeBeanProvider.getObject(); // Fetches a new instance
           bean.doSomething();
       }
   }
   ```

4. **Injecting the ApplicationContext directly (Anti-pattern)**:
   Calling `applicationContext.getBean(PrototypeBean.class)` works but tightly couples the code to the Spring Framework APIs, violating dependency injection principles.', 'Khi một prototype bean được inject vào một singleton bean, prototype bean chỉ được khởi tạo **đúng một lần** (tại thời điểm singleton bean được khởi tạo và cấu hình). Do đó, singleton bean sẽ luôn sử dụng cùng một instance của prototype bean trong tất cả các lần gọi sau này. Điều này đi ngược lại với đặc tính của prototype bean (vốn cần tạo ra instance mới cho mỗi lần yêu cầu).

Vấn đề này được gọi là **Scoped Proxy / Dependency Lookup problem**.

#### Các giải pháp khắc phục:

1. **Sử dụng Annotation `@Lookup` (Method Injection)**:
   Spring sẽ ghi đè phương thức được gắn `@Lookup` bằng thư viện CGLIB để tìm kiếm bean trực tiếp từ ApplicationContext mỗi khi phương thức được gọi.
   ```java
   @Component
   public class SingletonBean {
       @Lookup
       public PrototypeBean getPrototypeBean() {
           return null; // Spring sẽ override để trả về một instance PrototypeBean mới
       }
   }
   ```

2. **Sử dụng Scoped Proxy (`@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)`)**:
   Spring sẽ inject một proxy thay vị bean thực tế. Mỗi khi gọi method trên proxy này, proxy sẽ lấy một instance prototype bean mới từ ApplicationContext.
   ```java
   @Component
   @Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE, proxyMode = ScopedProxyMode.TARGET_CLASS)
   public class PrototypeBean {
       // ...
   }
   ```

3. **Sử dụng `ObjectProvider<PrototypeBean>`**:
   Cho phép lấy instance của prototype bean theo lập trình khi cần thiết.
   ```java
   @Component
   public class SingletonBean {
       @Autowired
       private ObjectProvider<PrototypeBean> prototypeBeanProvider;

       public void process() {
           PrototypeBean bean = prototypeBeanProvider.getObject(); // Lấy một instance mới
           bean.doSomething();
       }
   }
   ```

4. **Inject trực tiếp `ApplicationContext` (Anti-pattern)**:
   Gọi `applicationContext.getBean(PrototypeBean.class)` trực tiếp. Tuy nhiên, cách này làm code bị phụ thuộc chặt chẽ (tightly coupled) vào Spring API và vi phạm nguyên lý DI.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-57', 'Spring Core', 'Spring Core', 'Junior', 'What is @Primary used for?', 'Annotation @Primary được dùng để làm gì?', 'The `@Primary` annotation in Spring is used to define a **default bean** to be injected when there are multiple beans of the same type available for autowiring. This resolves ambiguity without having to explicitly name the bean at the injection point.

#### How it works:
If Spring detects multiple beans implementing the same interface, it will throw a `NoUniqueBeanDefinitionException` during startup unless a clear choice is specified. Applying `@Primary` on one of the beans tells Spring to select it by default.

#### Example:
```java
public interface MessageService {
    String sendMessage();
}

@Component
@Primary
public class EmailService implements MessageService {
    public String sendMessage() {
        return "Email sent";
    }
}

@Component
public class SmsService implements MessageService {
    public String sendMessage() {
        return "SMS sent";
    }
}

@Component
public class MessageController {
    @Autowired
    private MessageService messageService; // Injecting MessageService will default to EmailService
}
```

#### Key Considerations:
- If multiple candidate beans are marked with `@Primary`, Spring will still throw an exception due to conflict.
- `@Qualifier` takes precedence over `@Primary`. If a dependency injection point specifies a `@Qualifier`, Spring will ignore `@Primary` and use the bean specified by `@Qualifier`.', 'Annotation `@Primary` trong Spring được sử dụng để định nghĩa một **bean mặc định** được ưu tiên inject khi có nhiều bean cùng loại (implement cùng một interface hoặc kế thừa cùng một class) trong ApplicationContext. Điều này giúp giải quyết lỗi nhập nhằng (ambiguity) mà không cần khai báo tên cụ thể ở vị trí inject.

#### Cơ chế hoạt động:
Nếu Spring phát hiện nhiều bean cùng kiểu và không biết nên chọn bean nào, nó sẽ ném ra ngoại lệ `NoUniqueBeanDefinitionException` khi khởi động. Việc đặt `@Primary` trên một bean chỉ thị cho Spring chọn bean đó làm lựa chọn mặc định.

#### Ví dụ:
```java
public interface MessageService {
    String sendMessage();
}

@Component
@Primary
public class EmailService implements MessageService {
    public String sendMessage() {
        return "Email sent";
    }
}

@Component
public class SmsService implements MessageService {
    public String sendMessage() {
        return "SMS sent";
    }
}

@Component
public class MessageController {
    @Autowired
    private MessageService messageService; // Sẽ inject EmailService vì có @Primary
}
```

#### Điểm cần lưu ý:
- Nếu nhiều bean cùng loại đều được đánh dấu `@Primary`, Spring vẫn sẽ ném lỗi xung đột khi khởi động.
- `@Qualifier` có độ ưu tiên cao hơn `@Primary`. Nếu tại điểm inject có chỉ định `@Qualifier`, Spring sẽ bỏ qua `@Primary` và inject bean được cấu hình bởi `@Qualifier`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-58', 'Spring Core', 'Spring Core', 'Junior', 'What is @Qualifier used for?', 'Annotation @Qualifier được dùng để làm gì?', 'The `@Qualifier` annotation in Spring is used alongside `@Autowired` to resolve ambiguity when multiple beans of the same type exist in the Spring context. It allows you to specify the exact bean name (or qualifier value) that should be injected.

#### How it works:
While `@Primary` sets a global default bean for auto-wiring, `@Qualifier` provides fine-grained control at the injection point by specifying the target bean''s name.

#### Example:
```java
public interface PaymentGateway {
    void processPayment();
}

@Component("paypal")
public class PaypalPayment implements PaymentGateway {
    public void processPayment() { /* ... */ }
}

@Component("stripe")
public class StripePayment implements PaymentGateway {
    public void processPayment() { /* ... */ }
}

@Component
public class PaymentService {
    private final PaymentGateway paymentGateway;

    // Specifying the bean with name "stripe" for injection
    public PaymentService(@Qualifier("stripe") PaymentGateway paymentGateway) {
        this.paymentGateway = paymentGateway;
    }
}
```

#### Key differences from `@Primary`:
- **`@Primary`** is placed on the *bean definition* (class/method) and acts as a fallback default.
- **`@Qualifier`** is placed at the *injection point* (field, constructor, or setter parameter) to explicitly select a specific bean.
- `@Qualifier` overrides `@Primary`.', 'Annotation `@Qualifier` trong Spring được sử dụng cùng với `@Autowired` để giải quyết sự nhập nhằng khi có nhiều bean cùng loại (cùng implement một interface hoặc cùng một class cha) tồn tại trong ApplicationContext. Nó cho phép chỉ định chính xác tên bean (hoặc giá trị định danh qualifier) cần inject.

#### Cơ chế hoạt động:
Khác với `@Primary` đặt cấu hình mặc định ở mức toàn cục cho bean, `@Qualifier` mang tính kiểm soát chi tiết ở ngay tại vị trí inject bằng cách chỉ ra cụ thể bean nào sẽ được nạp.

#### Ví dụ:
```java
public interface PaymentGateway {
    void processPayment();
}

@Component("paypal")
public class PaypalPayment implements PaymentGateway {
    public void processPayment() { /* ... */ }
}

@Component("stripe")
public class StripePayment implements PaymentGateway {
    public void processPayment() { /* ... */ }
}

@Component
public class PaymentService {
    private final PaymentGateway paymentGateway;

    // Chỉ định cụ thể bean có tên "stripe" để inject
    public PaymentService(@Qualifier("stripe") PaymentGateway paymentGateway) {
        this.paymentGateway = paymentGateway;
    }
}
```

#### Khác biệt chính với `@Primary`:
- **`@Primary`** được khai báo tại *định nghĩa của bean* (trên class hoặc method tạo bean) và đóng vai trò là lựa chọn mặc định nếu không được chỉ định gì thêm.
- **`@Qualifier`** được khai báo tại *vị trí inject* (field, constructor, hoặc setter parameter) để chỉ định chính xác bean mong muốn.
- `@Qualifier` có độ ưu tiên cao hơn và sẽ ghi đè `@Primary`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-59', 'Spring Core', 'Spring Core', 'Mid', 'What causes a circular dependency in Spring?', 'Nguyên nhân gây ra lỗi circular dependency (phụ thuộc vòng) trong Spring là gì?', 'A **circular dependency** occurs when two or more beans depend on each other directly or indirectly. As a result, Spring cannot resolve the dependency graph to instantiate and wire them, leading to a startup failure (typically throwing a `BeanCurrentlyInCreationException`).

#### Types of Circular Dependency:

1. **Direct Circular Dependency**:
   Bean A requires Bean B, and Bean B requires Bean A (A → B → A).

2. **Indirect Circular Dependency**:
   Bean A requires Bean B, Bean B requires Bean C, and Bean C requires Bean A (A → B → C → A).

#### Common Root Causes:

- **Constructor Injection**:
  If constructor injection is used for both circular beans, Spring cannot create an instance of either bean because it requires the other bean''s fully instantiated object to invoke the constructor. Spring fails immediately.
  ```java
  @Component
  public class ClassA {
      private final ClassB classB;
      public ClassA(ClassB classB) { this.classB = classB; }
  }

  @Component
  public class ClassB {
      private final ClassA classA;
      public ClassB(ClassA classA) { this.classA = classA; }
  }
  ```

- **Field or Setter Injection with `@PostConstruct` or during initialization**:
  While Spring can resolve simple field/setter dependencies using a three-stage cache (via `DefaultSingletonBeanRegistry`), circular dependencies combined with complex AOP proxies or lifecycle hooks (like `@PostConstruct` referencing the circular dependency) can still break this mechanism and cause startup failures.', '**Circular dependency** (phụ thuộc vòng) xảy ra khi hai hoặc nhiều bean phụ thuộc lẫn nhau một cách trực tiếp hoặc gián tiếp. Kết quả là Spring không thể giải quyết đồ thị phụ thuộc để khởi tạo và inject chúng, dẫn đến lỗi khi khởi động ứng dụng (thường ném ra `BeanCurrentlyInCreationException`).

#### Các kiểu phụ thuộc vòng:

1. **Phụ thuộc vòng trực tiếp (Direct)**:
   Bean A cần Bean B, và Bean B cần Bean A (A → B → A).

2. **Phụ thuộc vòng gián tiếp (Indirect)**:
   Bean A cần Bean B, Bean B cần Bean C, và Bean C lại cần Bean A (A → B → C → A).

#### Nguyên nhân cốt lõi phổ biến:

- **Sử dụng Constructor Injection**:
  Nếu cả hai bean phụ thuộc vòng đều dùng constructor injection, Spring không thể khởi tạo bất kỳ bean nào vì để gọi constructor của một bean thì bean kia phải được khởi tạo hoàn chỉnh trước. Spring sẽ báo lỗi ngay lập tức.
  ```java
  @Component
  public class ClassA {
      private final ClassB classB;
      public ClassA(ClassB classB) { this.classB = classB; }
  }

  @Component
  public class ClassB {
      private final ClassA classA;
      public ClassB(ClassA classA) { this.classA = classA; }
  }
  ```

- **Field hoặc Setter Injection kết hợp với AOP hoặc `@PostConstruct`**:
  Mặc dù Spring có cơ chế cache 3 lớp (three-stage cache trong `DefaultSingletonBeanRegistry`) để giải quyết phụ thuộc vòng thông qua field/setter injection đối với các bean thông thường, nhưng nếu đi kèm với các proxy phức tạp (như AOP, `@Async`) hoặc truy cập bean phụ thuộc ngay trong phương thức `@PostConstruct`, cơ chế này vẫn có thể thất bại và gây ra lỗi.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-60', 'Spring Core', 'Spring Core', 'Mid', 'How can a circular dependency be avoided?', 'Làm thế nào để tránh hoặc khắc phục lỗi circular dependency trong Spring?', 'Avoiding circular dependencies is critical for maintainable and clean system design, as they are typically a symptom of poor architectural separation of concerns.

#### Best Practices to Avoid Circular Dependency (Redesign):

1. **Extract Shared Logic (Refactoring)**:
   Move the common functionality that causes the loop into a third bean (e.g., Bean C). Both Bean A and Bean B will then depend on Bean C, eliminating the loop (A → C, B → C).

2. **Introduce Event-Driven Communication**:
   Instead of calling methods synchronously via direct injection, let one bean publish an application event (using `ApplicationEventPublisher`) and the other listen to it using `@EventListener`.

#### Quick Fixes / Workarounds (If refactoring is not feasible immediately):

1. **Use `@Lazy` Annotation**:
   Adding `@Lazy` on one of the injection points tells Spring to inject a lazy-resolution proxy instead of the actual bean during instantiation. The actual bean will only be resolved when a method is called on it for the first time.
   ```java
   @Component
   public class ClassA {
       private final ClassB classB;
       // Spring injects a proxy of ClassB
       public ClassA(@Lazy ClassB classB) { this.classB = classB; }
   }
   ```

2. **Use Setter / Field Injection**:
   Spring can resolve circular dependencies automatically for singleton beans if you use setter or field injection instead of constructor injection. Spring achieves this by exposing an uninitialized (early) instance of the bean before resolving its dependencies.

3. **Using `@PostConstruct` deferment**:
   Ensure initialization logic requiring the dependency does not run during constructor execution but rather post-construction or on demand.

4. **Property `spring.main.allow-circular-references`**:
   Starting from Spring Boot 2.6, circular references are disabled by default. You can temporarily enable them by setting `spring.main.allow-circular-references=true` in `application.properties`. *Note: This is highly discouraged for production architectures.*', 'Tránh phụ thuộc vòng là điều tối quan trọng để giữ thiết kế hệ thống sạch sẽ và dễ bảo trì, vì phụ thuộc vòng thường là dấu hiệu của việc phân chia trách nhiệm (separation of concerns) chưa tốt.

#### Giải pháp thiết kế lại (Best Practices):

1. **Tách logic dùng chung (Refactoring)**:
   Chuyển phần logic chung gây ra vòng lặp sang một bean thứ ba (ví dụ: Bean C). Cả Bean A và Bean B sau đó sẽ phụ thuộc vào Bean C, loại bỏ hoàn toàn sự phụ thuộc lẫn nhau (A → C, B → C).

2. **Sử dụng Event-Driven (Kiến trúc hướng sự kiện)**:
   Thay vì gọi phương thức trực tiếp thông qua inject, hãy để một bean phát đi một sự kiện (sử dụng `ApplicationEventPublisher`) và bean kia lắng nghe sự kiện đó bằng cách dùng `@EventListener`.

#### Các giải pháp sửa lỗi nhanh (Workarounds) nếu chưa thể refactor ngay:

1. **Sử dụng Annotation `@Lazy`**:
   Đặt `@Lazy` tại vị trí inject sẽ báo cho Spring inject một proxy lười (lazy proxy) thay vì bean thực tế khi khởi động. Bean thực tế chỉ được lấy về khi một phương thức trên proxy được gọi lần đầu tiên.
   ```java
   @Component
   public class ClassA {
       private final ClassB classB;
       // Spring sẽ inject một proxy của ClassB
       public ClassA(@Lazy ClassB classB) { this.classB = classB; }
   }
   ```

2. **Chuyển sang Setter / Field Injection**:
   Spring có thể tự động giải quyết phụ thuộc vòng đối với các singleton bean nếu sử dụng setter hoặc field injection thay vì constructor injection. Spring thực hiện việc này bằng cách phơi bày một instance chưa được khởi tạo hoàn chỉnh (early instance) của bean trước khi đi giải quyết các dependency của nó.

3. **Trì hoãn logic bằng `@PostConstruct`**:
   Đảm bảo logic khởi tạo cần đến bean phụ thuộc không chạy trong constructor mà chạy sau khi bean đã được dựng xong hoặc chạy lazy theo yêu cầu.

4. **Cấu hình thuộc tính `spring.main.allow-circular-references`**:
   Từ phiên bản Spring Boot 2.6, cấu hình phụ thuộc vòng bị tắt mặc định. Bạn có thể bật lại tạm thời bằng cách cấu hình `spring.main.allow-circular-references=true` trong `application.properties`. *Lưu ý: Không khuyến khích áp dụng cách này cho hệ thống production thực tế.*', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-61', 'Spring Boot', 'Spring Boot', 'Junior', 'What is Spring Boot?', 'Spring Boot là gì?', '**Spring Boot** is an open-source, convention-over-configuration Java framework designed to simplify the development of production-ready, standalone Spring applications. It is built on top of the core Spring Framework, eliminating the tedious and repetitive boilerplate XML configuration, setup, and dependency management typically required when building Spring applications from scratch.

#### Core Philosophy:
It aims to make application startup and deployment as quick and seamless as possible by providing **"opinionated" defaults** and self-contained environments.

#### Key Features of Spring Boot:

1. **Auto-Configuration**:
   Dynamically configures beans based on the libraries (JARs) present on the classpath.
2. **Starter Dependencies**:
   Simplifies Maven/Gradle dependency management by bundling common groups of libraries together.
3. **Embedded Servlet Containers**:
   Includes embedded Tomcat, Jetty, or Undertow, allowing applications to run as standalone executable JAR files without deploying to an external web server.
4. **Production-Ready Features (Actuator)**:
   Provides built-in endpoints for monitoring, metrics, health checks, and application auditing.', '**Spring Boot** là một framework Java mã nguồn mở, hoạt động theo triết lý "convention-over-configuration" (cấu hình theo quy ước), được thiết kế để đơn giản hóa việc phát triển các ứng dụng Spring độc lập (standalone) và sẵn sàng chạy trên môi trường production. Nó được xây dựng trên nền tảng Spring Framework cốt lõi nhằm loại bỏ các cấu hình XML dài dòng, lặp đi lặp lại và việc quản lý dependency phức tạp khi xây dựng ứng dụng Spring từ đầu.

#### Triết lý cốt lõi:
Giúp cho việc khởi chạy và triển khai ứng dụng nhanh chóng và liền mạch nhất có thể bằng cách cung cấp các **cấu hình mặc định có tính định hướng (opinionated defaults)**.

#### Các tính năng chính của Spring Boot:

1. **Auto-Configuration (Tự động cấu hình)**:
   Tự động cấu hình các bean dựa trên các thư viện (file JAR) có mặt trên classpath.
2. **Starter Dependencies (Thư viện khởi động)**:
   Đơn giản hóa việc quản lý dependency trong Maven/Gradle bằng cách gộp nhóm các thư viện phổ biến lại với nhau.
3. **Embedded Servlet Containers (Máy chủ nhúng)**:
   Tích hợp sẵn các server như Tomcat, Jetty, hoặc Undertow, cho phép chạy ứng dụng dưới dạng file JAR độc lập mà không cần deploy lên web server ngoài.
4. **Production-Ready Features (Actuator)**:
   Cung cấp các endpoint tích hợp sẵn để giám sát (monitoring), thu thập số liệu (metrics), kiểm tra trạng thái hoạt động (health checks) và kiểm toán ứng dụng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-62', 'Spring Boot', 'Spring Boot', 'Junior', 'What problems does Spring Boot solve?', 'Spring Boot giải quyết những vấn đề gì?', 'Before Spring Boot, developing applications with the Spring Framework was notorious for its complexity and overhead. Spring Boot was introduced to solve several key pain points:

#### 1. "Configuration Hell" (Boilerplate XML and Java Configurations)
- **Problem**: Traditional Spring applications required vast amounts of XML or Java `@Configuration` code just to bootstrap basic features like databases, transactions, MVC routing, or security.
- **Solution**: Spring Boot uses **Auto-Configuration** to analyze the classpath and automatically set up common beans, reducing configuration by up to 90%.

#### 2. Dependency Version Conflicts ("Dependency Hell")
- **Problem**: Managing compatible versions of multiple libraries (e.g., Hibernate, Spring Core, Jackson, Logback) was error-prone and caused runtime conflicts.
- **Solution**: **Starter POMs** curate and test compatible versions of libraries under a single parent POM (BOM), ensuring all dependencies work together out of the box.

#### 3. Deployment Complexity (Servlet Containers Setup)
- **Problem**: Developers had to install, configure, and maintain external servlet containers like Apache Tomcat, compile their projects into `.war` files, and deploy them.
- **Solution**: Spring Boot packages applications into an executable **fat JAR** containing an **embedded servlet container** (Tomcat, Jetty, etc.), runnable via a simple command: `java -jar app.jar`.

#### 4. Lack of Built-in Production Monitoring
- **Problem**: Implementing health checks, metrics logging, and application configuration auditing required custom frameworks and significant coding.
- **Solution**: **Spring Boot Actuator** provides production-ready metrics, health status, and environment properties via HTTP or JMX endpoints with minimal configuration.', 'Trước khi Spring Boot ra đời, việc phát triển ứng dụng bằng Spring Framework nổi tiếng là phức tạp và tốn nhiều công sức thiết lập. Spring Boot được giới thiệu nhằm giải quyết các điểm nghẽn chính sau:

#### 1. Gánh nặng cấu hình ("Configuration Hell")
- **Vấn đề**: Các ứng dụng Spring truyền thống đòi hỏi lượng lớn cấu hình XML hoặc mã nguồn Java `@Configuration` chỉ để khởi động các tính năng cơ bản như database, transaction, MVC routing, hoặc security.
- **Giải pháp**: Spring Boot sử dụng **Auto-Configuration** để quét classpath và tự động thiết lập các bean phổ biến, giảm tới 90% lượng cấu hình cần viết.

#### 2. Xung đột phiên bản thư viện ("Dependency Hell")
- **Vấn đề**: Việc quản lý phiên bản tương thích giữa hàng chục thư viện khác nhau (như Hibernate, Spring Core, Jackson, Logback) rất dễ xảy ra lỗi và xung đột khi chạy.
- **Giải pháp**: Các **Starter POMs** quản lý và kiểm thử sẵn các phiên bản thư viện tương thích dưới một POM cha chung (BOM), đảm bảo mọi thư viện đi kèm đều hoạt động đồng bộ.

#### 3. Sự phức tạp khi triển khai (Cấu hình Web Server)
- **Vấn đề**: Lập trình viên phải cài đặt, cấu hình và bảo trì các servlet container bên ngoài như Apache Tomcat, sau đó biên dịch dự án thành file `.war` để deploy lên đó.
- **Giải pháp**: Spring Boot đóng gói ứng dụng thành một file **fat JAR** tự chạy chứa sẵn **embedded servlet container** (Tomcat, Jetty, v.v.), có thể chạy đơn giản bằng câu lệnh: `java -jar app.jar`.

#### 4. Thiếu công cụ giám sát hệ thống tích hợp sẵn
- **Vấn đề**: Việc xây dựng tính năng kiểm tra sức khỏe hệ thống (health checks), ghi nhận số liệu (metrics) và kiểm tra cấu hình đòi hỏi phải lập trình thêm hoặc tích hợp thư viện ngoài phức tạp.
- **Giải pháp**: **Spring Boot Actuator** cung cấp sẵn các chỉ số giám sát, trạng thái sức khỏe và thông tin cấu hình môi trường qua các HTTP endpoint hoặc JMX chỉ với cấu hình tối thiểu.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-63', 'Spring Boot', 'Spring Boot', 'Mid', 'What is Spring Boot auto-configuration?', 'Cơ chế tự động cấu hình (auto-configuration) của Spring Boot là gì?', '**Spring Boot auto-configuration** is a mechanism that automatically configures a Spring application based on the dependencies present in the classpath. Its main goal is to eliminate boilerplate bean definitions.

#### How it works:

1. **Classpath Scanning**:
   Spring Boot inspects the classpath for specific classes or JAR files. For example, if `h2.jar` is present, it assumes you want an in-memory database and automatically registers a `DataSource` bean.
2. **Conditional Annotations**:
   Auto-configuration heavily relies on the `@Conditional` family of annotations, which evaluate conditions at runtime. Examples include:
   - `@ConditionalOnClass`: Configures a bean only if a specific class is present on the classpath.
   - `@ConditionalOnMissingBean`: Configures a bean only if the developer hasn''t already defined their own bean of that type (enabling easy customization).
   - `@ConditionalOnProperty`: Configures a bean only when a specific application property is set to a certain value.
3. **Auto-Configuration Classes**:
   These are standard Spring `@Configuration` classes located in starter JARs under `META-INF/spring/org.springframework.boot.autoconfigure.AutoConfiguration.imports` (in Spring Boot 3.x) or `META-INF/spring.factories` (in Spring Boot 2.x).

#### Example:
If Spring Boot detects `spring-boot-starter-web` on the classpath, it automatically configures standard web beans like `DispatcherServlet`, Jackson for JSON parsing, and embedded Tomcat. If you declare your own custom `DispatcherServlet` bean, Spring Boot backs off and uses yours instead.', '**Spring Boot auto-configuration** là một cơ chế tự động cấu hình ứng dụng Spring dựa trên các dependency (thư viện) có mặt trong classpath. Mục tiêu chính của nó là loại bỏ các định nghĩa bean lặp đi lặp lại.

#### Cơ chế hoạt động:

1. **Quét Classpath**:
   Spring Boot kiểm tra classpath để tìm các class hoặc file JAR cụ thể. Ví dụ: nếu có `h2.jar`, nó sẽ giả định bạn muốn dùng một in-memory database và tự động đăng ký một bean `DataSource`.
2. **Các Conditional Annotation**:
   Tự động cấu hình phụ thuộc mạnh mẽ vào nhóm annotation `@Conditional`, dùng để đánh giá các điều kiện tại thời điểm runtime. Các ví dụ bao gồm:
   - `@ConditionalOnClass`: Chỉ cấu hình bean nếu một class cụ thể tồn tại trong classpath.
   - `@ConditionalOnMissingBean`: Chỉ cấu hình bean nếu lập trình viên chưa tự định nghĩa bất kỳ bean nào cùng loại (giúp lập trình viên dễ dàng tùy biến ghi đè).
   - `@ConditionalOnProperty`: Chỉ cấu hình bean khi một thuộc tính cụ thể trong file cấu hình được đặt với giá trị mong muốn.
3. **Các Class tự động cấu hình**:
   Đây là các class `@Configuration` thông thường nằm trong các file JAR starter tại đường dẫn `META-INF/spring/org.springframework.boot.autoconfigure.AutoConfiguration.imports` (ở Spring Boot 3.x) hoặc `META-INF/spring.factories` (ở Spring Boot 2.x).

#### Ví dụ:
Nếu Spring Boot phát hiện `spring-boot-starter-web` trên classpath, nó sẽ tự động cấu hình các bean web chuẩn như `DispatcherServlet`, Jackson để xử lý JSON, và server Tomcat nhúng. Nếu bạn tự khai báo một bean `DispatcherServlet` tùy biến của riêng mình, Spring Boot sẽ nhường quyền và sử dụng bean của bạn thay thế.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-64', 'Spring Boot', 'Spring Boot', 'Mid', 'How does @SpringBootApplication work?', 'Annotation @SpringBootApplication hoạt động như thế nào?', 'The `@SpringBootApplication` annotation is a convenience annotation that marks the main class of a Spring Boot application. It is a meta-annotation that encapsulates three essential Spring annotations:

```java
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
@SpringBootConfiguration
@EnableAutoConfiguration
@ComponentScan(excludeFilters = { ... })
public @interface SpringBootApplication { ... }
```

#### The Three Core Components:

1. **`@SpringBootConfiguration`**:
   - It is a specialized form of Spring''s standard `@Configuration` annotation.
   - It marks the class as a source of bean definitions for the application context.

2. **`@EnableAutoConfiguration`**:
   - Tells Spring Boot to start looking for auto-configuration classes (defined in external JARs) and register beans based on the classpath.
   - Works via `AutoConfigurationImportSelector`, which reads configuration files from metadata (`org.springframework.boot.autoconfigure.AutoConfiguration.imports`).

3. **`@ComponentScan`**:
   - Instructs Spring to scan the package of the annotated class and all its sub-packages for Spring components (like `@Component`, `@Service`, `@Repository`, `@RestController`).
   - *Design Tip*: Since it scans sub-packages, placing your main class in the root package (e.g., `com.company.project`) ensures all components are detected.', 'Annotation `@SpringBootApplication` là một meta-annotation tiện ích dùng để đánh dấu class chính (entry point) của một ứng dụng Spring Boot. Nó gộp ba annotation cốt lõi của Spring lại với nhau:

```java
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
@SpringBootConfiguration
@EnableAutoConfiguration
@ComponentScan(excludeFilters = { ... })
public @interface SpringBootApplication { ... }
```

#### Ba thành phần cốt lõi:

1. **`@SpringBootConfiguration`**:
   - Là một phiên bản chuyên biệt của annotation `@Configuration` chuẩn trong Spring.
   - Đánh dấu class này là một nguồn cung cấp các định nghĩa bean cho Application Context.

2. **`@EnableAutoConfiguration`**:
   - Chỉ thị cho Spring Boot bắt đầu tìm kiếm các class tự động cấu hình (được định nghĩa trong các file JAR ngoài) và đăng ký các bean dựa trên classpath.
   - Hoạt động thông qua `AutoConfigurationImportSelector`, đọc tệp cấu hình từ siêu dữ liệu (`org.springframework.boot.autoconfigure.AutoConfiguration.imports`).

3. **`@ComponentScan`**:
   - Yêu cầu Spring quét package chứa class chính này cùng với tất cả các package con của nó để tìm kiếm và đăng ký các component của Spring (như `@Component`, `@Service`, `@Repository`, `@RestController`).
   - *Mẹo thiết kế*: Do quét tất cả các package con, việc đặt class chính ở package gốc (ví dụ: `com.company.project`) sẽ đảm bảo mọi component trong dự án đều được phát hiện.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-65', 'Spring Boot', 'Spring Boot', 'Junior', 'What is the difference between Spring and Spring Boot?', 'Sự khác biệt giữa Spring và Spring Boot là gì?', 'The primary difference lies in their purpose: **Spring Framework** is an ecosystem providing fundamental enterprise features (like DI/IoC, AOP, Transactions), whereas **Spring Boot** is an extension built on top of Spring to make it faster, easier, and less error-prone to configure and run Spring applications.

#### Side-by-Side Comparison:

| Feature | Spring Framework | Spring Boot |
| :--- | :--- | :--- |
| **Core Focus** | A comprehensive framework for enterprise Java development. | An extension of Spring to bootstrap applications rapidly. |
| **Configuration** | Heavy manual configuration using XML or Java `@Configuration`. | Zero or minimal configuration via Auto-Configuration. |
| **Deployment** | Requires compiling to `.war` and deploying to an external servlet container (e.g., Tomcat, WildFly). | Bundles an embedded servlet container; deploys as an executable standalone **fat JAR** using `java -jar`. |
| **Dependency Management** | Developers must manage versions of all libraries manually, risking conflicts. | Offers curated **Starter POMs** that manage compatible dependency versions automatically. |
| **Developer Productivity** | Lower initial setup speed; requires configuring database connections, transaction managers, MVC dispatchers. | High bootstrapping speed; provides opinionated defaults out of the box. |
| **Monitoring & Metrics** | No built-in monitoring; must be implemented manually. | Includes **Spring Boot Actuator** for health checks, metrics, and application info endpoints. |', 'Khác biệt cơ bản nhất nằm ở mục đích sử dụng: **Spring Framework** là một hệ sinh thái cung cấp các tính năng nền tảng cho phát triển phần mềm doanh nghiệp (như DI/IoC, AOP, Transactions), trong khi **Spring Boot** là một phần mở rộng được xây dựng trên nền tảng Spring để giúp việc cấu hình và chạy các ứng dụng Spring nhanh hơn, dễ dàng hơn và ít gặp lỗi hơn.

#### Bảng so sánh chi tiết:

| Đặc điểm | Spring Framework | Spring Boot |
| :--- | :--- | :--- |
| **Trọng tâm cốt lõi** | Framework toàn diện để phát triển ứng dụng Java Enterprise. | Phần mở rộng của Spring để khởi chạy ứng dụng cực kỳ nhanh chóng. |
| **Cấu hình** | Cấu hình thủ công phức tạp thông qua các file XML hoặc Java `@Configuration`. | Hầu như không cần cấu hình hoặc cấu hình tối thiểu nhờ Auto-Configuration. |
| **Triển khai (Deployment)** | Phải build thành file `.war` và triển khai thủ công lên web server ngoài (như Tomcat, WildFly). | Tích hợp sẵn web server nhúng; chạy độc lập trực tiếp dưới dạng file **fat JAR** qua lệnh `java -jar`. |
| **Quản lý Dependency** | Lập trình viên phải tự tìm kiếm và khai báo phiên bản cho từng thư viện, dễ gây xung đột. | Cung cấp các **Starter POMs** đóng gói sẵn và tự động tương thích phiên bản. |
| **Năng suất lập trình** | Tốc độ xây dựng ban đầu chậm; phải tự cấu hình database connection, transaction manager, MVC dispatcher. | Tốc độ khởi chạy ứng dụng nhanh; cung cấp sẵn các cấu hình mặc định (opinionated). |
| **Giám sát & Thống kê** | Không tích hợp sẵn công cụ giám sát; phải tự phát triển hoặc tích hợp thư viện ngoài. | Tích hợp sẵn **Spring Boot Actuator** để kiểm tra sức khỏe hệ thống, thu thập metrics và thông tin cấu hình. |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-66', 'Spring Boot', 'Spring Boot', 'Junior', 'What is a starter dependency in Spring Boot?', 'Starter dependency trong Spring Boot là gì?', 'A **starter dependency** (or Starter POM) is a curated set of convenient dependency descriptors that you can include in your application. They act as aggregation libraries that combine multiple transitive dependencies required to boot a specific feature under a single dependency declaration.

#### Why starters are useful:
In traditional Maven/Gradle setups, setting up a web application required adding JUnit, Spring MVC, Jackson, Tomcat, Logback, and resolving all their versions.
With Spring Boot, you only need to add **one** dependency: `spring-boot-starter-web`.

#### How it works under the hood:
- Starters are empty JARs that contain no actual Java code.
- Instead, their sole purpose is to list a group of other libraries as dependencies in their `pom.xml` (using Maven BOM to manage versions).
- Spring Boot auto-configuration then detects these imported libraries on the classpath and instantiates the appropriate beans automatically.

#### Examples of Common Starters:
- `spring-boot-starter-web`: Pulls in Spring MVC, Embedded Tomcat, Hibernate Validator, Jackson.
- `spring-boot-starter-data-jpa`: Pulls in Hibernate, Spring Data JPA, HikariCP (Connection Pool), Spring AOP.
- `spring-boot-starter-security`: Pulls in Spring Security Core, Spring Security Web, Spring Security Config.
- `spring-boot-starter-test`: Pulls in JUnit, Mockito, AssertJ, Spring Test.', 'Một **starter dependency** (hay Starter POM) là một tập hợp các descriptor phụ thuộc tiện lợi được thiết kế để nhúng vào ứng dụng. Chúng đóng vai trò là các thư viện tổng hợp, gộp nhóm nhiều dependency liên quan cần thiết để vận hành một tính năng cụ thể dưới một khai báo dependency duy nhất.

#### Tại sao starter lại hữu ích:
Trong các dự án Maven/Gradle truyền thống, để dựng một ứng dụng web, bạn cần phải thêm thủ công các thư viện như JUnit, Spring MVC, Jackson, Tomcat, Logback và tự giải quyết phiên bản của chúng.
Với Spring Boot, bạn chỉ cần thêm đúng **một** dependency duy nhất: `spring-boot-starter-web`.

#### Cơ chế hoạt động:
- Các Starter thực chất là các file JAR rỗng không chứa code Java thực tế.
- Mục đích duy nhất của chúng là liệt kê một nhóm các thư viện liên quan khác làm dependency trong file `pom.xml` của chúng (sử dụng Maven BOM để quản lý phiên bản).
- Sau đó, tính năng tự động cấu hình của Spring Boot (Auto-configuration) sẽ phát hiện các thư viện này trên classpath và tự động khởi tạo các bean tương ứng.

#### Các ví dụ về Starter phổ biến:
- `spring-boot-starter-web`: Kéo về Spring MVC, Embedded Tomcat, Hibernate Validator, Jackson.
- `spring-boot-starter-data-jpa`: Kéo về Hibernate, Spring Data JPA, HikariCP (Connection Pool), Spring AOP.
- `spring-boot-starter-security`: Kéo về Spring Security Core, Spring Security Web, Spring Security Config.
- `spring-boot-starter-test`: Kéo về JUnit, Mockito, AssertJ, Spring Test.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-67', 'Spring Boot', 'Spring Boot', 'Junior', 'What is the purpose of application.properties or application.yml?', 'Mục đích của file application.properties hoặc application.yml là gì?', 'In Spring Boot, `application.properties` and `application.yml` are the primary configuration files used to externalize application configuration, allowing developers to run the same application in different environments without code modifications.

### Core Purposes:
1. **Configuration Externalization:** Allows setting variables such as database credentials, API keys, server details, logging levels, and custom business parameters outside the Java source code.
2. **Framework Configuration:** Overrides default autoconfigurations provided by Spring Boot starters (e.g., changing server ports, database connection pools, JSON serialization formats).
3. **Environment-Specific Profiles:** Define profile-specific properties (e.g., `application-dev.yml`, `application-prod.yml`) that are dynamically loaded depending on the active Spring profile.
4. **Integration with @Value and @ConfigurationProperties:** Values defined in these files can be easily injected into Spring Beans using annotations.

### Difference between `.properties` and `.yml`:
- **`application.properties`:** Uses a flat key-value pair format (e.g., `server.port=8080`). It does not support native hierarchical structures, meaning keys often repeat prefixes.
- **`application.yml` (YAML):** Uses a hierarchical, indented structure (nested blocks). It is cleaner, reduces duplication, and is highly readable, making it ideal for complex configuration structures. YAML also supports lists, arrays, and multi-line strings naturally.', 'Trong Spring Boot, `application.properties` và `application.yml` là các file cấu hình chính được sử dụng để tách biệt cấu hình khỏi mã nguồn (externalize configuration), cho phép các nhà phát triển chạy cùng một ứng dụng trong các môi trường khác nhau mà không cần sửa đổi code.

### Các mục đích cốt lõi:
1. **Tách biệt cấu hình (Externalization):** Cho phép thiết lập các biến như thông tin kết nối cơ sở dữ liệu, API key, thông tin server, mức độ ghi log (logging level), và các tham số nghiệp vụ tùy chỉnh nằm ngoài mã nguồn Java.
2. **Cấu hình Framework:** Ghi đè các cấu hình tự động (autoconfiguration) mặc định do các Spring Boot starters cung cấp (ví dụ: thay đổi cổng server, cấu hình connection pool cho database, định dạng tuần tự hóa JSON).
3. **Hỗ trợ Profiles theo môi trường:** Định nghĩa các thuộc tính dành riêng cho từng môi trường (ví dụ: `application-dev.yml`, `application-prod.yml`) được tải động tùy thuộc vào profile đang hoạt động.
4. **Tích hợp với @Value và @ConfigurationProperties:** Các giá trị được định nghĩa trong các file này có thể dễ dàng inject vào các Spring Bean thông qua các annotation.

### Sự khác biệt giữa `.properties` và `.yml`:
- **`application.properties`:** Sử dụng định dạng cặp key-value phẳng (ví dụ: `server.port=8080`). Định dạng này không hỗ trợ cấu trúc phân cấp trực quan, dẫn đến việc các khóa thường phải lặp lại tiền tố.
- **`application.yml` (YAML):** Sử dụng cấu trúc phân cấp, thụt lề thụt dòng (nested blocks). Định dạng này sạch sẽ hơn, giảm thiểu trùng lặp tiền tố và dễ đọc hơn, rất lý tưởng cho các cấu trúc cấu hình phức tạp. Ngoài ra, YAML hỗ trợ các kiểu danh sách, mảng và chuỗi nhiều dòng một cách tự nhiên.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-68', 'Spring Boot', 'Spring Boot', 'Mid', 'How do Spring profiles work?', 'Spring profiles hoạt động như thế nào?', 'Spring Profiles provide a powerful mechanism to segregate parts of the application configuration and make them available only in specific environments (such as `dev`, `test`, `staging`, or `prod`).

### How Profiles Work:

#### 1. Declaring Profile-Specific Beans
You can use the `@Profile` annotation to specify that a Bean or a Configuration class should only be registered in the ApplicationContext when the corresponding profile is active.
```java
@Configuration
@Profile("dev")
public class DevDatabaseConfig {
    @Bean
    public DataSource dataSource() {
        return new H2DataSource();
    }
}
```

#### 2. Profile-Specific Configuration Files
Spring Boot automatically loads configuration files matching the pattern `application-{profile}.properties` or `application-{profile}.yml`. 
- If no profile is active, only `application.yml` is loaded.
- If `prod` is active, Spring Boot loads `application.yml` first, and then overrides or appends properties from `application-prod.yml`.

#### 3. Activating Profiles
Profiles can be activated in several ways:
- **Command-line arguments:**
  `java -jar app.jar --spring.profiles.active=prod`
- **JVM system properties:**
  `java -Dspring.profiles.active=prod -jar app.jar`
- **Environment variables:**
  `export SPRING_PROFILES_ACTIVE=prod`
- **Default Configuration (`application.yml`):**
  ```yaml
  spring:
    profiles:
      active: dev
  ```', 'Spring Profiles cung cấp một cơ chế mạnh mẽ để phân tách các phần cấu hình của ứng dụng và chỉ kích hoạt chúng trong các môi trường cụ thể (như `dev`, `test`, `staging`, hoặc `prod`).

### Cách hoạt động của Profiles:

#### 1. Khai báo các Bean theo Profile cụ thể
Bạn có thể sử dụng annotation `@Profile` để chỉ định rằng một Bean hoặc một lớp Cấu hình (`@Configuration`) chỉ được đăng ký vào ApplicationContext khi profile tương ứng đang hoạt động.
```java
@Configuration
@Profile("dev")
public class DevDatabaseConfig {
    @Bean
    public DataSource dataSource() {
        return new H2DataSource();
    }
}
```

#### 2. Các file cấu hình theo Profile cụ thể
Spring Boot tự động tải các file cấu hình khớp với mẫu `application-{profile}.properties` hoặc `application-{profile}.yml`.
- Nếu không có profile nào hoạt động, chỉ `application.yml` được tải.
- Nếu profile `prod` được kích hoạt, Spring Boot sẽ tải `application.yml` trước, sau đó ghi đè hoặc bổ sung các thuộc tính từ file `application-prod.yml`.

#### 3. Cách kích hoạt các Profile
Có nhiều cách để kích hoạt các profile:
- **Tham số dòng lệnh (Command-line arguments):**
  `java -jar app.jar --spring.profiles.active=prod`
- **Thuộc tính hệ thống JVM (JVM system properties):**
  `java -Dspring.profiles.active=prod -jar app.jar`
- **Biến môi trường (Environment variables):**
  `export SPRING_PROFILES_ACTIVE=prod`
- **Cấu hình mặc định trong file (`application.yml`):**
  ```yaml
  spring:
    profiles:
      active: dev
  ```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-69', 'Spring Boot', 'Spring Boot', 'Mid', 'What is the difference between @Value and @ConfigurationProperties?', 'Sự khác biệt giữa @Value và @ConfigurationProperties là gì?', 'Both `@Value` and `@ConfigurationProperties` are used to bind external configuration properties to variables in Spring, but they differ significantly in their approach, features, and use cases.

### Detailed Comparison:

| Feature | `@Value` | `@ConfigurationProperties` |
| :--- | :--- | :--- |
| **Binding Style** | Binds individual properties step-by-step. | Group-based/Bulk binding to a structured Java object. |
| **Relaxed Binding** | Not supported. Keys in configuration files must match the variable string exactly. | Supported (e.g., `serverPort`, `server-port`, `SERVER_PORT` all map to `serverPort`). |
| **SpEL Support** | Fully supported (e.g., `@Value("#{systemProperties[''user.name'']}")`). | Not supported. |
| **Type Safety** | Low. Relies on manual conversion or throws runtime exceptions for invalid mappings. | High. Fully type-safe and maps nested hierarchy structures to corresponding child objects. |
| **Validation** | Not supported (no JSR-303 bean validation support). | Fully supported (can use `@Validated`, `@NotNull`, `@Min`, etc.). |
| **Usage Location** | Fields, method/constructor parameters. | Classes or `@Bean` factory methods. |

### Code Examples:

**Using `@Value`:**
```java
@Component
public class MyService {
    @Value("${app.timeout:5000}") // Fallback default value supported
    private int timeout;
}
```

**Using `@ConfigurationProperties`:**
```java
@Component
@ConfigurationProperties(prefix = "app")
@Validated
public class AppProperties {
    @NotNull
    private String name;
    private int timeout;
    private List<String> servers;
    // Getters and Setters
}
```', 'Cả `@Value` và `@ConfigurationProperties` đều được sử dụng để liên kết (bind) các thuộc tính cấu hình bên ngoài vào các biến trong Spring, nhưng chúng khác biệt rõ rệt về cách tiếp cận, tính năng và trường hợp sử dụng.

### So sánh chi tiết:

| Tính năng | `@Value` | `@ConfigurationProperties` |
| :--- | :--- | :--- |
| **Kiểu liên kết** | Liên kết từng thuộc tính đơn lẻ, thủ công. | Liên kết hàng loạt/nhóm thuộc tính vào một đối tượng Java có cấu trúc. |
| **Relaxed Binding (Liên kết linh hoạt)** | Không hỗ trợ. Khóa cấu hình phải khớp hoàn toàn với chuỗi khai báo. | Có hỗ trợ (ví dụ: `serverPort`, `server-port`, `SERVER_PORT` đều tự động ánh xạ vào biến `serverPort`). |
| **Hỗ trợ SpEL** | Hỗ trợ đầy đủ (ví dụ: `@Value("#{systemProperties[''user.name'']}")`). | Không hỗ trợ. |
| **An toàn kiểu dữ liệu (Type Safety)** | Thấp. Dựa trên chuyển đổi thủ công hoặc ném ngoại lệ runtime nếu sai kiểu. | Cao. Hoàn toàn an toàn kiểu dữ liệu và ánh xạ cấu trúc lồng nhau vào các đối tượng con tương ứng. |
| **Kiểm tra hợp lệ (Validation)** | Không hỗ trợ (không hỗ trợ JSR-303 bean validation). | Hỗ trợ đầy đủ (có thể kết hợp với `@Validated`, `@NotNull`, `@Min`, v.v.). |
| **Vị trí sử dụng** | Khai báo trên Field, tham số phương thức hoặc constructor. | Khai báo trên Class hoặc phương thức factory `@Bean`. |

### Ví dụ mã nguồn:

**Sử dụng `@Value`:**
```java
@Component
public class MyService {
    @Value("${app.timeout:5000}") // Hỗ trợ giá trị mặc định fallback
    private int timeout;
}
```

**Sử dụng `@ConfigurationProperties`:**
```java
@Component
@ConfigurationProperties(prefix = "app")
@Validated
public class AppProperties {
    @NotNull
    private String name;
    private int timeout;
    private List<String> servers;
    // Getters và Setters
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-70', 'Spring Boot', 'Spring Boot', 'Junior', 'What is an embedded server in Spring Boot?', 'Máy chủ nhúng (embedded server) trong Spring Boot là gì?', 'An **embedded server** is a web server that is packaged and integrated directly inside the application''s runtime binary (the executable JAR file), rather than the application being deployed into an external, pre-installed web server.

### Key Characteristics:
- **Self-Contained Executable:** When you package a Spring Boot application, it compiles into a standalone JAR file containing both your compiled code and all necessary server dependencies (like Apache Tomcat, Jetty, or Undertow).
- **Bootstrap execution:** You can launch the web application simply by running: `java -jar application-name.jar`. The application starts up its own JVM, initializes the Spring context, and boots up the servlet container internally.
- **No Deployment overhead:** Developers do not need to install, configure, or manage standalone servlet containers (like standalone Tomcat or JBoss WildFly) on production servers.

### Default Servers in Spring Boot:
- **Tomcat** is the default embedded servlet container for standard web applications (`spring-boot-starter-web`).
- **Netty** is the default embedded reactive server for WebFlux applications (`spring-boot-starter-webflux`).
- **Jetty** and **Undertow** are alternative options that can be easily switched by excluding Tomcat dependencies in the build configuration (Maven or Gradle).', '**Máy chủ nhúng (embedded server)** là một web server được đóng gói và tích hợp trực tiếp bên trong file nhị phân chạy ứng dụng (file JAR có khả năng thực thi), thay vì việc ứng dụng phải được deploy lên một web server được cài đặt sẵn bên ngoài.

### Các đặc điểm chính:
- **Độc lập và tự chạy (Self-Contained):** Khi bạn đóng gói một ứng dụng Spring Boot, nó sẽ được biên dịch thành một file JAR độc lập chứa cả mã nguồn của bạn và tất cả các thư viện server cần thiết (như Apache Tomcat, Jetty, hoặc Undertow).
- **Khởi chạy đơn giản:** Bạn có thể khởi động ứng dụng web chỉ bằng cách chạy lệnh: `java -jar tên-ứng-dụng.jar`. Ứng dụng sẽ tự mở JVM của nó, khởi tạo Spring Context và khởi chạy servlet container ở bên trong.
- **Không cần tốn công deploy:** Các lập trình viên không cần phải cài đặt, cấu hình hoặc quản lý các servlet container độc lập (như Tomcat hoặc JBoss WildFly chạy riêng) trên các máy chủ production.

### Các máy chủ mặc định trong Spring Boot:
- **Tomcat** là servlet container nhúng mặc định cho các ứng dụng web tiêu chuẩn (`spring-boot-starter-web`).
- **Netty** là reactive server nhúng mặc định cho các ứng dụng WebFlux (`spring-boot-starter-webflux`).
- **Jetty** và **Undertow** là các tùy chọn thay thế có thể dễ dàng chuyển đổi bằng cách loại trừ (exclude) thư viện Tomcat trong cấu hình build (Maven hoặc Gradle).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-71', 'Spring Boot', 'Spring Boot', 'Junior', 'How can the default server port be changed in Spring Boot?', 'Làm thế nào để thay đổi cổng (port) server mặc định trong Spring Boot?', 'By default, Spring Boot starts the embedded Tomcat server on port `8080`. You can change this configuration using several methods:

### 1. In Configuration Files (Most Common)
Define the `server.port` property in your configuration files:
- **`application.properties`:**
  ```properties
  server.port=9090
  ```
- **`application.yml`:**
  ```yaml
  server:
    port: 9090
  ```
*(Set `server.port=0` to let Spring Boot dynamically scan and allocate a random free port, useful for integration testing).*

### 2. Via Command Line Arguments
Override configuration at startup without modifying code:
```bash
java -jar myapp.jar --server.port=9090
```

### 3. Via Environment Variables
Useful in containerized environments like Docker or Kubernetes:
```bash
export SERVER_PORT=9090
java -jar myapp.jar
```

### 4. Programmatically
Implement the `WebServerFactoryCustomizer` interface to configure the port dynamically:
```java
@Component
public class CustomServerPortCustomizer 
  implements WebServerFactoryCustomizer<ConfigurableWebServerFactory> {
  
    @Override
    public void customize(ConfigurableWebServerFactory factory) {
        factory.setPort(9090);
    }
}
```', 'Theo mặc định, Spring Boot sẽ khởi chạy server Tomcat nhúng trên cổng `8080`. Bạn có thể thay đổi cấu hình này bằng một số phương pháp sau:

### 1. Trong các file cấu hình (Cách phổ biến nhất)
Định nghĩa thuộc tính `server.port` trong các file cấu hình của bạn:
- **Trong file `application.properties`:**
  ```properties
  server.port=9090
  ```
- **Trong file `application.yml`:**
  ```yaml
  server:
    port: 9090
  ```
*(Thiết lập `server.port=0` để Spring Boot tự động quét và phân bổ một cổng trống ngẫu nhiên, cực kỳ hữu ích cho việc viết integration test).*

### 2. Thông qua tham số dòng lệnh (Command Line Arguments)
Ghi đè cấu hình khi khởi chạy mà không cần sửa đổi mã nguồn:
```bash
java -jar myapp.jar --server.port=9090
```

### 3. Thông qua biến môi trường (Environment Variables)
Hữu ích trong các môi trường container hóa như Docker hoặc Kubernetes:
```bash
export SERVER_PORT=9090
java -jar myapp.jar
```

### 4. Bằng cách lập trình (Programmatically)
Triển khai interface `WebServerFactoryCustomizer` để cấu hình cổng động trực tiếp từ code Java:
```java
@Component
public class CustomServerPortCustomizer 
  implements WebServerFactoryCustomizer<ConfigurableWebServerFactory> {
  
    @Override
    public void customize(ConfigurableWebServerFactory factory) {
        factory.setPort(9090);
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-72', 'Spring Boot', 'Spring Boot', 'Mid', 'What is Spring Boot Actuator?', 'Spring Boot Actuator là gì?', '**Spring Boot Actuator** is a sub-project of Spring Boot that provides production-ready features to help monitor, gather metrics, and manage your application when it runs in production.

Instead of having to implement monitoring APIs manually, Actuator exposes built-in HTTP endpoints (or JMX beans) that allow you to inspect the application''s runtime behavior.

### Key Features and Endpoints:
- **`/actuator/health`:** Shows application health status (e.g., status UP/DOWN, database connectivity, disk space). Highly utilized by load balancers and Kubernetes for liveness and readiness probes.
- **`/actuator/metrics`:** Exposes various application metrics (JVM memory usage, CPU usage, active threads, HTTP request counts, DB connections details) using Micrometer.
- **`/actuator/env`:** Exposes Spring''s Environment properties (active profiles, system properties, environment variables).
- **`/actuator/loggers`:** Allows viewing and dynamically changing log levels of application classes at runtime without restarting the application.
- **`/actuator/threaddump`:** Generates a thread dump for diagnostics.
- **`/actuator/heapdump`:** Downloads a JVM heap dump file for memory leak analysis.
- **`/actuator/info`:** Exposes custom application information (e.g., git commit hash, build version).

### Security Best Practice:
Since Actuator endpoints expose sensitive configuration details, they should be secured. In modern Spring Boot, most endpoints are disabled by default (except `/health`). You must explicitly expose them in configurations and configure Spring Security to restrict access:
```yaml
management:
  endpoints:
    web:
      exposure:
        include: "health,info,metrics"
```', '**Spring Boot Actuator** là một dự án con của Spring Boot cung cấp các tính năng sẵn sàng cho môi trường sản xuất (production-ready), giúp giám sát, thu thập số liệu (metrics) và quản lý ứng dụng của bạn khi chạy thực tế.

Thay vì phải tự xây dựng các API giám sát một cách thủ công, Actuator cung cấp các endpoint tích hợp sẵn qua giao thức HTTP (hoặc JMX beans) cho phép kiểm tra hành vi runtime của ứng dụng.

### Các tính năng và Endpoint quan trọng:
- **`/actuator/health`:** Hiển thị trạng thái sức khỏe của ứng dụng (ví dụ: UP/DOWN, kết nối cơ sở dữ liệu, dung lượng ổ đĩa). Được sử dụng nhiều bởi các bộ cân bằng tải và Kubernetes để kiểm tra liveness và readiness probe.
- **`/actuator/metrics`:** Cung cấp các thông số đo lường của ứng dụng (dung lượng bộ nhớ JVM, mức sử dụng CPU, số luồng hoạt động, số lượng request HTTP, kết nối cơ sở dữ liệu) thông qua thư viện Micrometer.
- **`/actuator/env`:** Hiển thị các thuộc tính Environment của Spring (các profile đang hoạt động, thuộc tính hệ thống, biến môi trường).
- **`/actuator/loggers`:** Cho phép xem và thay đổi trực tiếp mức độ ghi log (log level) của các class ứng dụng tại thời điểm chạy (runtime) mà không cần khởi động lại ứng dụng.
- **`/actuator/threaddump`:** Tạo bản kết xuất luồng (thread dump) phục vụ mục đích chẩn đoán sự cố.
- **`/actuator/heapdump`:** Tải xuống file kết xuất bộ nhớ (heap dump) để phân tích rò rỉ bộ nhớ JVM.
- **`/actuator/info`:** Hiển thị các thông tin tùy biến của ứng dụng (ví dụ: mã hash commit git, phiên bản build).

### Thực tiễn tốt nhất về bảo mật (Security Best Practice):
Vì các endpoint của Actuator tiết lộ nhiều thông tin cấu hình nhạy cảm, chúng cần phải được bảo vệ chặt chẽ. Trong các phiên bản Spring Boot hiện đại, hầu hết các endpoint đều bị tắt mặc định (ngoại trừ `/health`). Bạn phải kích hoạt chúng một cách rõ ràng trong cấu hình và sử dụng Spring Security để giới hạn quyền truy cập:
```yaml
management:
  endpoints:
    web:
      exposure:
        include: "health,info,metrics"
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-73', 'Spring MVC', 'Spring MVC', 'Junior', 'What is Spring MVC?', 'Spring MVC là gì?', '**Spring MVC** is a Java framework built on top of the Servlet API that implements the Model-View-Controller design pattern. It is designed to develop web applications and RESTful web services in a decoupled, robust, and highly testable manner.

### Core Components of MVC:
1. **Model:** Represents the application''s state, data, and business logic. It consists of Java objects (POJOs) containing data that will be passed between the controller and the view.
2. **View:** Represents the presentation layer of the application (e.g., HTML, Thymeleaf, JSP, or JSON/XML for REST). It is responsible for rendering the Model data and displaying it to the user.
3. **Controller:** Handles incoming client HTTP requests, processes input data, calls services for business logic execution, and chooses which View should be rendered next (or directly writes the JSON response to the response stream).

### Key Advantages:
- **Clear Separation of Concerns:** Decouples business logic, presentation logic, and navigation.
- **Integration with Spring ecosystem:** Seamlessly integrates with Dependency Injection, Spring Security, Spring Data JPA, and Spring Transactions.
- **Flexible Handler Mappings:** Routes URLs to target methods easily using annotations like `@RequestMapping`, `@GetMapping`, and `@PostMapping`.', '**Spring MVC** là một framework Java được xây dựng trên nền tảng Servlet API triển khai mẫu thiết kế Model-View-Controller (Mô hình - Giao diện - Điều khiển). Nó được thiết kế để phát triển các ứng dụng web và các dịch vụ web RESTful một cách độc lập, mạnh mẽ và dễ viết unit test.

### Các thành phần cốt lõi của MVC:
1. **Model (Mô hình):** Đại diện cho trạng thái, dữ liệu và logic nghiệp vụ của ứng dụng. Nó bao gồm các đối tượng Java (POJO) chứa dữ liệu sẽ được truyền qua lại giữa controller và view.
2. **View (Giao diện):** Đại diện cho tầng hiển thị giao diện của ứng dụng (ví dụ: HTML, Thymeleaf, JSP, hoặc định dạng JSON/XML cho dịch vụ REST). Nó chịu trách nhiệm render dữ liệu Model và hiển thị cho người dùng.
3. **Controller (Bộ điều khiển):** Xử lý các request HTTP đến từ client, xử lý dữ liệu đầu vào, gọi các lớp service để thực thi logic nghiệp vụ và quyết định xem View nào sẽ được hiển thị tiếp theo (hoặc ghi trực tiếp dữ liệu JSON vào response stream).

### Ưu điểm chính:
- **Phân tách rõ ràng (Separation of Concerns):** Tách biệt rạch ròi giữa logic nghiệp vụ, logic hiển thị giao diện và logic điều hướng.
- **Tích hợp chặt chẽ với hệ sinh thái Spring:** Tích hợp mượt mà với Dependency Injection, Spring Security, Spring Data JPA và Spring Transactions.
- **Liên kết ánh xạ linh hoạt:** Định tuyến các URL đến các phương thức xử lý mục tiêu một cách dễ dàng thông qua các annotation như `@RequestMapping`, `@GetMapping`, và `@PostMapping`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-74', 'Spring MVC', 'Spring MVC', 'Mid', 'What happens when an HTTP request reaches a Spring MVC application?', 'Điều gì xảy ra khi một request HTTP gửi đến một ứng dụng Spring MVC?', 'When an HTTP request is sent by a client and reaches a Spring MVC application, it follows a structured lifecycle coordinated by the **DispatcherServlet** (the Front Controller). Here is the step-by-step request flow:

1. **Request Interception:** The web container (e.g., Tomcat) receives the HTTP request and routes it to the `DispatcherServlet` (configured to listen to `/` or specific URL patterns).
2. **Handler Mapping:** The `DispatcherServlet` queries one or more `HandlerMapping` beans to identify the appropriate handler (usually a method inside a `@Controller` or `@RestController`) that should process the request based on the URL and HTTP method.
3. **Handler Adapter Selection:** Once the handler is found, the `DispatcherServlet` obtains the corresponding `HandlerAdapter`. The adapter is responsible for actually invoking the controller''s handler method with the correctly parsed parameters.
4. **Execution of Interceptors:** Any registered `HandlerInterceptor` runs its `preHandle()` methods before the controller is executed. If any interceptor returns `false`, execution stops.
5. **Controller Invocation:** The `HandlerAdapter` executes the handler method in the Controller. The Controller invokes business services to process the request.
6. **Return Type Resolution:** 
   - **Traditional MVC:** The Controller returns a view name and Model data encapsulated in a `ModelAndView` object.
   - **RESTful MVC:** The Controller is annotated with `@ResponseBody` (or inside `@RestController`). The return value is intercepted by `HttpMessageConverter` (like Jackson) to convert the Java object directly to JSON/XML and write it to the response stream, skipping steps 7 & 8.
7. **View Resolution (Traditional MVC):** The `DispatcherServlet` queries a `ViewResolver` (e.g., ThymeleafViewResolver) to translate the logical view name (e.g., "index") into a physical View object.
8. **View Rendering (Traditional MVC):** The `DispatcherServlet` passes the Model data to the resolved View, which renders the output (HTML).
9. **Interceptor Post-processing:** The interceptors'' `postHandle()` and `afterCompletion()` methods are executed in sequence.
10. **Response Delivery:** The final response (HTML page or JSON/XML payload) is sent back to the client over HTTP.', 'Khi một request HTTP được gửi từ client và đến ứng dụng Spring MVC, nó sẽ đi qua một vòng đời có cấu trúc chặt chẽ được điều phối bởi **DispatcherServlet** (Front Controller). Dưới đây là quy trình xử lý từng bước:

1. **Đánh chặn Request (Request Interception):** Web container (ví dụ: Tomcat) nhận request HTTP và chuyển nó tới `DispatcherServlet` (được cấu hình để lắng nghe đường dẫn `/` hoặc các mẫu URL cụ thể).
2. **Ánh xạ Handler (Handler Mapping):** `DispatcherServlet` truy vấn một hoặc nhiều bean `HandlerMapping` để tìm handler (thường là một phương thức trong `@Controller` hoặc `@RestController`) phù hợp để xử lý request dựa trên URL và HTTP method.
3. **Lựa chọn Handler Adapter:** Khi tìm thấy handler, `DispatcherServlet` lấy ra `HandlerAdapter` tương ứng. Adapter này chịu trách nhiệm gọi phương thức xử lý của controller với các tham số đầu vào đã được phân tích cú pháp chính xác.
4. **Thực thi Interceptor (Bộ chặn):** Các `HandlerInterceptor` được đăng ký sẽ thực thi phương thức `preHandle()` trước khi controller chạy. Nếu bất kỳ interceptor nào trả về `false`, luồng xử lý sẽ dừng lại.
5. **Gọi Controller (Controller Invocation):** `HandlerAdapter` thực thi phương thức của Controller. Controller này gọi các service nghiệp vụ để xử lý yêu cầu.
6. **Giải quyết kiểu dữ liệu trả về (Return Type Resolution):**
   - **Mô hình MVC truyền thống:** Controller trả về tên view và dữ liệu Model được đóng gói trong đối tượng `ModelAndView`.
   - **Mô hình RESTful MVC:** Controller được đánh dấu `@ResponseBody` (hoặc nằm trong `@RestController`). Giá trị trả về sẽ được xử lý bởi `HttpMessageConverter` (như Jackson) để chuyển đổi đối tượng Java trực tiếp thành JSON/XML và ghi thẳng vào response stream, bỏ qua bước 7 & 8.
7. **Phân giải View (View Resolution - MVC truyền thống):** `DispatcherServlet` truy vấn `ViewResolver` (ví dụ: ThymeleafViewResolver) để chuyển đổi tên view logic (ví dụ: "index") thành đối tượng View vật lý thực tế.
8. **Render Giao diện (View Rendering - MVC truyền thống):** `DispatcherServlet` truyền dữ liệu Model vào View đã được phân giải, View tiến hành kết xuất (render) mã HTML.
9. **Xử lý sau chặn (Interceptor Post-processing):** Các phương thức `postHandle()` và `afterCompletion()` của các interceptor được thực thi theo thứ tự.
10. **Phản hồi (Response Delivery):** Phản hồi cuối cùng (trang HTML hoặc dữ liệu JSON/XML) được gửi trả lại cho client thông qua giao thức HTTP.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-75', 'Spring MVC', 'Spring MVC', 'Mid', 'What is DispatcherServlet?', 'DispatcherServlet là gì?', '**DispatcherServlet** is the core component and the Front Controller of the Spring Web MVC framework. It inherits from `HttpServlet` and acts as the central coordinator, orchestrating the entire flow of incoming HTTP requests to their appropriate handlers.

### Key Responsibilities of DispatcherServlet:
1. **Front Controller Pattern implementation:** Instead of having multiple Servlets mapped to different URLs, DispatcherServlet receives all incoming HTTP requests, centralizing authentication, logging, internationalization, and error handling.
2. **Routing to Controllers:** It collaborates with `HandlerMapping` to route requests to appropriate handler methods.
3. **Data Binding and Argument Resolution:** Using `HandlerAdapter`, it binds web request parameters (query parameters, body payloads) to Java objects/parameters declared in controller methods.
4. **View Resolution:** In traditional web applications, it utilizes `ViewResolver` implementations to map logical view names returned by controllers to physical views (such as JSP, Thymeleaf, or FreeMarker templates).
5. **Content Negotiation / API Responses:** For RESTful Web Services, it utilizes `HttpMessageConverter` beans to write structured data (like JSON or XML) directly to the response body.
6. **Theme and Locale Resolution:** Resolves user locales and themes for globalized applications.', '**DispatcherServlet** là thành phần cốt lõi và là Front Controller của framework Spring Web MVC. Nó kế thừa từ `HttpServlet` và hoạt động như một bộ điều phối trung tâm, kiểm soát toàn bộ luồng xử lý các HTTP request đi vào đến các handler phù hợp.

### Các trách nhiệm chính của DispatcherServlet:
1. **Triển khai mẫu thiết kế Front Controller:** Thay vì có nhiều Servlet ánh xạ đến các URL khác nhau, DispatcherServlet tiếp nhận tất cả các HTTP request đầu vào, tập trung hóa các tác vụ như xác thực, logging, đa ngôn ngữ hóa (internationalization) và xử lý lỗi.
2. **Định tuyến đến các Controller:** Nó kết hợp với `HandlerMapping` để định tuyến các request đến phương thức handler phù hợp.
3. **Ràng buộc dữ liệu (Data Binding) và Phân giải Tham số:** Sử dụng `HandlerAdapter`, nó liên kết các tham số của web request (query parameters, body payloads) vào các đối tượng/tham số Java được khai báo trong các phương thức của controller.
4. **Phân giải View (View Resolution):** Trong các ứng dụng web truyền thống, nó sử dụng các triển khai `ViewResolver` để ánh xạ tên view logic được trả về bởi controller thành các view vật lý thực tế (như các file template JSP, Thymeleaf, hoặc FreeMarker).
5. **Thương lượng nội dung / Phản hồi API:** Đối với RESTful Web Services, nó sử dụng các bean `HttpMessageConverter` để ghi dữ liệu có cấu trúc (như JSON hoặc XML) trực tiếp vào response body.
6. **Phân giải Theme và Locale:** Phân giải ngôn ngữ (locale) và giao diện (theme) của người dùng cho các ứng dụng đa quốc gia.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-76', 'Spring MVC', 'Spring MVC', 'Junior', 'What is the role of a controller in Spring MVC?', 'Vai trò của controller trong Spring MVC là gì?', 'In Spring MVC, the **Controller** is the ''C'' in the MVC design pattern. Its primary role is to act as an intermediary layer between the user interface (the Client/View) and the application''s backend business logic (the Model/Service layer).

### Key Responsibilities:
- **Handling Requests:** Receives client requests via mapped URLs using annotations like `@RequestMapping`, `@GetMapping`, `@PostMapping`, etc.
- **Input Validation:** Validates incoming request parameters or request bodies (using annotations like `@Valid` or `@Validated`).
- **Delegation to Business Logic:** Acts as a coordinator by calling the service layer (`@Service` beans) to process business operations. The controller itself should not contain heavy business logic.
- **Preparing the Model Data:** Gathers the calculated data and adds it to the `Model` object so that it can be displayed by the View.
- **Determining the Response/View:** Returns either a logical name of the view to render (e.g., "user-profile") or serializes data directly into JSON/XML payloads if building REST APIs.', 'Trong Spring MVC, **Controller** đại diện cho chữ ''C'' trong mẫu thiết kế MVC. Vai trò chính của nó là hoạt động như một lớp trung gian giữa giao diện người dùng (Client/View) và logic nghiệp vụ phía backend của ứng dụng (lớp Model/Service).

### Các trách nhiệm chính:
- **Xử lý Request:** Nhận các request từ client thông qua các URL được ánh xạ bằng các annotation như `@RequestMapping`, `@GetMapping`, `@PostMapping`, v.v.
- **Xác thực dữ liệu đầu vào (Input Validation):** Kiểm tra tính hợp lệ của các tham số request hoặc request body (sử dụng các annotation như `@Valid` hoặc `@Validated`).
- **Ủy thác cho Logic nghiệp vụ:** Hoạt động như một bộ điều phối bằng cách gọi lớp service (các bean `@Service`) để xử lý các nghiệp vụ. Bản thân controller không nên chứa các logic nghiệp vụ phức tạp.
- **Chuẩn bị dữ liệu Model:** Thu thập dữ liệu đã được xử lý và đưa vào đối tượng `Model` để View có thể sử dụng và hiển thị.
- **Quyết định Phản hồi/View:** Trả về tên logic của view cần hiển thị (ví dụ: "user-profile") hoặc tự động tuần tự hóa dữ liệu trực tiếp thành JSON/XML nếu xây dựng các API REST.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-77', 'Spring MVC', 'Spring MVC', 'Junior', 'What is the difference between @Controller and @RestController?', 'Sự khác biệt giữa @Controller và @RestController là gì?', 'Both `@Controller` and `@RestController` are used to define controller classes in Spring MVC, but they cater to different architecture types (Web MVC vs. REST APIs).

### Core Differences:

| Feature | `@Controller` | `@RestController` |
| :--- | :--- | :--- |
| **Primary Use Case** | Traditional Web Applications returning rendered web pages (HTML, JSP, Thymeleaf). | RESTful Web Services returning data payloads (JSON, XML, text). |
| **Under the Hood** | Standard stereotype annotation representing a Controller. | Meta-annotation that combines `@Controller` and `@ResponseBody`. |
| **Response Generation** | Looks for a logical view name to resolve via `ViewResolver` (unless method has `@ResponseBody`). | Automatically writes return values directly to the HTTP response body using message converters. |
| **`@ResponseBody`** | Must be manually annotated at class or method level to return raw data. | Applied automatically to all handler methods within the class. |

### Code Examples:

**Traditional Web Controller:**
```java
@Controller
public class WebController {
    @GetMapping("/home")
    public String homePage(Model model) {
        model.addAttribute("message", "Hello World");
        return "home"; // Resolves to home.html or home.jsp
    }
}
```

**RESTful Web Controller:**
```java
@RestController
public class ApiController {
    @GetMapping("/api/user")
    public User getUser() {
        return new User("Alice", 30); // Automatically serialized to JSON
    }
}
```', 'Cả `@Controller` và `@RestController` đều được dùng để định nghĩa các lớp controller trong Spring MVC, nhưng chúng phục vụ cho hai loại kiến trúc khác nhau (Web MVC truyền thống vs. REST API).

### Sự khác biệt cốt lõi:

| Tính năng | `@Controller` | `@RestController` |
| :--- | :--- | :--- |
| **Trường hợp sử dụng chính** | Ứng dụng Web truyền thống trả về các trang web được render (HTML, JSP, Thymeleaf). | RESTful Web Services trả về các gói dữ liệu thuần (JSON, XML, text). |
| **Bản chất bên dưới** | Là annotation định danh chuẩn đại diện cho một Controller. | Là annotation kết hợp (meta-annotation) giữa `@Controller` và `@ResponseBody`. |
| **Cách tạo Phản hồi (Response)** | Tìm kiếm tên view logic để phân giải qua `ViewResolver` (trừ khi phương thức có `@ResponseBody`). | Tự động ghi trực tiếp các giá trị trả về vào HTTP response body sử dụng các bộ chuyển đổi message converter. |
| **Sử dụng `@ResponseBody`** | Phải đánh dấu thủ công trên Class hoặc Method nếu muốn trả về dữ liệu thô. | Tự động áp dụng cho tất cả các phương thức xử lý bên trong class. |

### Ví dụ mã nguồn:

**Controller Web truyền thống:**
```java
@Controller
public class WebController {
    @GetMapping("/home")
    public String homePage(Model model) {
        model.addAttribute("message", "Hello World");
        return "home"; // Sẽ được phân giải thành file home.html hoặc home.jsp
    }
}
```

**Controller API RESTful:**
```java
@RestController
public class ApiController {
    @GetMapping("/api/user")
    public User getUser() {
        return new User("Alice", 30); // Tự động tuần tự hóa thành định dạng JSON
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-78', 'Spring MVC', 'Spring MVC', 'Junior', 'What is the difference between @RequestMapping and @GetMapping?', 'Sự khác biệt giữa @RequestMapping và @GetMapping là gì?', '`@RequestMapping` and `@GetMapping` are both used to map HTTP requests to handler methods in Spring MVC controllers, but they differ in configuration and scope:
- **`@RequestMapping`**:
  - It is a general-purpose annotation that can be applied at both the **class level** (to define a base path for all handler methods in a controller) and the **method level**.
  - By default, it maps to all HTTP methods (GET, POST, PUT, DELETE, etc.) unless restricted using the `method` element (e.g., `@RequestMapping(value = "/users", method = RequestMethod.GET)`).
- **`@GetMapping`**:
  - It is a **method-level** specialized shortcut annotation introduced in Spring 4.3.
  - It acts as a composed annotation that is meta-annotated with `@RequestMapping(method = RequestMethod.GET)`.
  - It specifically restricts the mapping to only HTTP GET requests, making the code cleaner, more readable, and self-documenting.

**Example Comparison:**
```java
// Using @RequestMapping
@RequestMapping(value = "/users", method = RequestMethod.GET)
public List<User> getUsers() { ... }

// Using @GetMapping (Cleaner and preferred at method level)
@GetMapping("/users")
public List<User> getUsers() { ... }
```
Other HTTP verb-specific shortcuts include `@PostMapping`, `@PutMapping`, `@DeleteMapping`, and `@PatchMapping`.', '`@RequestMapping` và `@GetMapping` đều được sử dụng để ánh xạ (map) các yêu cầu HTTP tới các phương thức xử lý (handler methods) trong Spring MVC controller, nhưng chúng khác nhau về phạm vi và cấu hình:
- **`@RequestMapping`**:
  - Là annotation tổng quát, có thể áp dụng ở cả **cấp độ class** (để định nghĩa base path cho tất cả các method trong controller) và **cấp độ method**.
  - Mặc định, nó sẽ map với tất cả các phương thức HTTP (GET, POST, PUT, DELETE, v.v.) trừ khi được giới hạn bằng thuộc tính `method` (ví dụ: `@RequestMapping(value = "/users", method = RequestMethod.GET)`).
- **`@GetMapping`**:
  - Là annotation chuyên biệt ở **cấp độ method**, được giới thiệu từ Spring 4.3.
  - Đây là một "composed annotation" được tạo sẵn (meta-annotated) từ `@RequestMapping(method = RequestMethod.GET)`.
  - Nó giới hạn hành vi ánh xạ chỉ dành riêng cho các yêu cầu HTTP GET, giúp mã nguồn trở nên ngắn gọn, dễ đọc và tự giải thích rõ ràng hơn.

**So sánh bằng code:**
```java
// Sử dụng @RequestMapping
@RequestMapping(value = "/users", method = RequestMethod.GET)
public List<User> getUsers() { ... }

// Sử dụng @GetMapping (Ngắn gọn và được khuyến nghị sử dụng ở cấp method)
@GetMapping("/users")
public List<User> getUsers() { ... }
```
Các annotation tương tự cho các HTTP method khác bao gồm `@PostMapping`, `@PutMapping`, `@DeleteMapping`, và `@PatchMapping`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-79', 'Spring MVC', 'Spring MVC', 'Junior', 'What is the difference between @PathVariable and @RequestParam?', 'Sự khác biệt giữa @PathVariable và @RequestParam là gì?', 'Both `@PathVariable` and `@RequestParam` are used to extract values from an incoming HTTP request, but they extract them from different parts of the request URI:
- **`@PathVariable`**:
  - Extracts values directly from the **URI path** segments (also known as URI template variables).
  - Used for identifying resources in RESTful designs. The variable in the URL is enclosed in curly braces `{}`.
  - **Example URL:** `/api/users/42` (where `42` is the path variable).
  - **Syntax:**
    ```java
    @GetMapping("/users/{id}")
    public ResponseEntity<User> getUserById(@PathVariable("id") Long userId) { ... }
    ```
- **`@RequestParam`**:
  - Extracts values from the **query parameters** (or query strings) appended to the end of the URL, or from form-submitted parameters (form data).
  - Used for filtering, sorting, or optional parameters.
  - **Example URL:** `/api/users?status=ACTIVE&page=1` (where `status` and `page` are request parameters).
  - **Syntax:**
    ```java
    @GetMapping("/users")
    public ResponseEntity<List<User>> getUsers(
        @RequestParam(value = "status", required = false, defaultValue = "ACTIVE") String status) { ... }
    ```
  - By default, parameters annotated with `@RequestParam` are required, but this can be modified via `required = false` and `defaultValue`.

**Summary Table:**
| Feature | `@PathVariable` | `@RequestParam` |
| --- | --- | --- |
| **Location** | Part of the URL path itself (e.g., `/users/123`) | Append after `?` in URL (e.g., `/users?id=123`) or form parameters |
| **REST Standard** | Used to identify a specific resource | Used to filter, sort, or paginate resources |
| **Optionality** | Usually mandatory (as it dictates the URL route) | Can easily be marked optional with `required=false` or `defaultValue` |', 'Cả `@PathVariable` và `@RequestParam` đều được dùng để trích xuất các giá trị từ HTTP request gửi đến, nhưng chúng lấy dữ liệu từ các phần khác nhau của URI:
- **`@PathVariable`**:
  - Trích xuất dữ liệu trực tiếp từ **đường dẫn URI** (còn gọi là các biến URI template).
  - Thường dùng để định danh tài nguyên cụ thể theo phong cách thiết kế RESTful. Biến trong URL được bọc bởi cặp ngoặc nhọn `{}`.
  - **Ví dụ URL:** `/api/users/42` (trong đó `42` là biến đường dẫn).
  - **Cú pháp:**
    ```java
    @GetMapping("/users/{id}")
    public ResponseEntity<User> getUserById(@PathVariable("id") Long userId) { ... }
    ```
- **`@RequestParam`**:
  - Trích xuất dữ liệu từ các **tham số truy vấn (query parameters)** được thêm ở phía sau dấu `?` của URL hoặc từ dữ liệu gửi lên qua form (form data).
  - Thường dùng để lọc (filter), sắp xếp (sort), phân trang (paginate) hoặc các tham số tùy chọn khác.
  - **Ví dụ URL:** `/api/users?status=ACTIVE&page=1` (trong đó `status` và `page` là các tham số truy vấn).
  - **Cú pháp:**
    ```java
    @GetMapping("/users")
    public ResponseEntity<List<User>> getUsers(
        @RequestParam(value = "status", required = false, defaultValue = "ACTIVE") String status) { ... }
    ```
  - Mặc định các tham số đánh dấu bằng `@RequestParam` là bắt buộc, nhưng ta có thể chuyển thành tùy chọn bằng cách đặt `required = false` hoặc cung cấp `defaultValue`.

**Bảng so sánh tóm tắt:**
| Tiêu chí | `@PathVariable` | `@RequestParam` |
| --- | --- | --- |
| **Vị trí** | Nằm trong chính đường dẫn URL (ví dụ: `/users/123`) | Phía sau dấu `?` trên URL (ví dụ: `/users?id=123`) hoặc từ form data |
| **Chuẩn REST** | Dùng để định danh một tài nguyên cụ thể | Dùng để lọc, sắp xếp hoặc phân trang danh sách tài nguyên |
| **Tính bắt buộc**| Thường là bắt buộc (vì nó thay đổi định tuyến của URL) | Có thể cấu hình tùy chọn dễ dàng qua `required=false` hoặc `defaultValue` |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-80', 'Spring MVC', 'Spring MVC', 'Junior', 'What is @RequestBody used for?', '@RequestBody được dùng để làm gì?', '`@RequestBody` is used to bind the HTTP request body (typically containing a JSON or XML payload) to a Java object method parameter in a controller.
- **How it works:** When a request arrives, Spring MVC delegates the task of reading the raw input stream of the HTTP request and converting it into a Java object to the configured `HttpMessageConverter` interface.
- **JSON Serialization/Deserialization:** In modern Spring Boot applications, the default converter is `MappingJackson2HttpMessageConverter`, which internally uses the Jackson library to deserialize JSON data into a Java object (POJO).
- **Common Usage:** It is typically used with state-changing operations like POST, PUT, or PATCH requests, where complex data is transmitted in the body.

**Example:**
```java
@PostMapping("/users")
public ResponseEntity<User> createUser(@RequestBody UserDto userDto) {
    User savedUser = userService.save(userDto);
    return ResponseEntity.status(HttpStatus.CREATED).body(savedUser);
}
```
In this scenario, if the client sends a JSON payload like `{"name": "Alice", "email": "alice@example.com"}`, Spring will instantiate a `UserDto` object and populate its fields accordingly.', '`@RequestBody` được dùng để ánh xạ (bind) nội dung của HTTP request body (thường là định dạng JSON hoặc XML) thành một đối tượng Java (POJO) đóng vai trò là tham số của phương thức trong controller.
- **Cơ chế hoạt động:** Khi nhận được request, Spring MVC sẽ ủy quyền (delegate) việc đọc dữ liệu thô từ HTTP input stream và chuyển đổi nó thành đối tượng Java cho các `HttpMessageConverter`.
- **Deserialization JSON:** Trong các ứng dụng Spring Boot hiện đại, converter mặc định là `MappingJackson2HttpMessageConverter`. Nó sử dụng thư viện Jackson để chuyển đổi (deserialize) chuỗi JSON thành đối tượng Java.
- **Sử dụng phổ biến:** Thường được sử dụng trong các phương thức thay đổi trạng thái như POST, PUT, hoặc PATCH, nơi dữ liệu phức tạp được gửi trong body của request.

**Ví dụ:**
```java
@PostMapping("/users")
public ResponseEntity<User> createUser(@RequestBody UserDto userDto) {
    User savedUser = userService.save(userDto);
    return ResponseEntity.status(HttpStatus.CREATED).body(savedUser);
}
```
Trong trường hợp này, nếu client gửi lên một payload JSON là `{"name": "Alice", "email": "alice@example.com"}`, Spring sẽ khởi tạo một instance của `UserDto` và gán các giá trị tương ứng vào các trường của đối tượng này.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-81', 'Spring MVC', 'Spring MVC', 'Junior', 'What is @ResponseBody used for?', '@ResponseBody được dùng để làm gì?', '`@ResponseBody` tells Spring MVC that the return value of a controller method should be written directly to the HTTP response body, rather than being resolved into a HTML view template (like Thymeleaf or JSP).
- **How it works:** Spring uses the registered `HttpMessageConverter` (such as `MappingJackson2HttpMessageConverter` for JSON) to serialize the Java object returned by the method into the format requested by the client (defined by the `Accept` header in the HTTP request, e.g., JSON or XML).
- **Metadata Handling:** When `@ResponseBody` is used, Spring automatically sets appropriate HTTP headers like `Content-Type: application/json` or `Content-Type: application/xml` based on the converter and serialization process.
- **`@RestController` shortcut:** In modern REST API development, instead of adding `@ResponseBody` to every individual method, we typically annotate the class with `@RestController`. `@RestController` is a composed annotation that combines `@Controller` and `@ResponseBody`, ensuring all methods in that class implicitly write their return values to the HTTP response body.

**Example:**
```java
@Controller
public class ClassicUserController {
    @GetMapping("/user/{id}")
    @ResponseBody
    public User getUser(@PathVariable Long id) {
        return userService.findById(id); // Written as JSON directly to the response body
    }
}
```', '`@ResponseBody` dùng để chỉ thị cho Spring MVC rằng giá trị trả về của phương thức trong controller cần được ghi trực tiếp vào phần thân của HTTP response (HTTP response body), thay vì được xử lý để chuyển hướng tới một View template (như Thymeleaf hoặc JSP).
- **Cơ chế hoạt động:** Spring sẽ sử dụng các `HttpMessageConverter` được đăng ký (ví dụ: `MappingJackson2HttpMessageConverter` đối với định dạng JSON) để chuyển đổi (serialize) đối tượng Java được trả về từ phương thức thành định dạng dữ liệu tương ứng mà client yêu cầu (thông qua header `Accept` của HTTP request, ví dụ: JSON hoặc XML).
- **Xử lý Metadata:** Khi sử dụng `@ResponseBody`, Spring sẽ tự động thiết lập các HTTP header phù hợp như `Content-Type: application/json` hoặc `Content-Type: application/xml` dựa trên converter và kết quả tuần tự hóa dữ liệu.
- **Lối tắt với `@RestController`:** Trong phát triển REST API hiện đại, thay vì phải thêm `@ResponseBody` trên từng phương thức xử lý, chúng ta thường đánh dấu class bằng `@RestController`. `@RestController` là một "composed annotation" kết hợp giữa `@Controller` và `@ResponseBody`, giúp toàn bộ các phương thức trong class tự động ghi trực tiếp kết quả trả về vào HTTP response body.

**Ví dụ:**
```java
@Controller
public class ClassicUserController {
    @GetMapping("/user/{id}")
    @ResponseBody
    public User getUser(@PathVariable Long id) {
        return userService.findById(id); // Ghi trực tiếp dưới dạng JSON vào response body
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-82', 'Spring MVC', 'Spring MVC', 'Mid', 'How does Spring convert a Java object into JSON?', 'Spring chuyển đổi một đối tượng Java sang JSON như thế nào?', 'Spring MVC uses a pipeline of converters to handle request and response payloads. The process of converting a Java object to JSON involves the following steps:

1. **HTTP Message Converters Configuration:**
   When Spring Boot starts up, it automatically configures `HttpMessageConverter` implementations. For JSON, if Jackson (`jackson-databind`) is on the classpath (which it is by default via `spring-boot-starter-web`), Spring registers `MappingJackson2HttpMessageConverter`.

2. **Content Negotiation:**
   When a controller method returns an object (and is annotated with `@ResponseBody` or within `@RestController`), Spring determines the response format using content negotiation. It examines:
   - The `Accept` header in the incoming HTTP request (e.g., `Accept: application/json`).
   - The configured default content type.

3. **Message Conversion Process:**
   - Spring iterates through the list of registered `HttpMessageConverter` implementations to find one that can write the returned Java type as the target media type (e.g., `application/json`).
   - `MappingJackson2HttpMessageConverter` is selected because it supports `application/json` and can serialize generic Java classes.

4. **Jackson Serialization:**
   - The converter calls the Jackson `ObjectMapper` under the hood.
   - Jackson analyzes the object structure (using Java Reflection, accessing getter methods, or reading annotations like `@JsonProperty`, `@JsonIgnore`, or `@JsonFormat`).
   - Jackson serializes the object''s properties into a JSON byte stream and writes it directly to the servlet''s output stream (`HttpServletResponse.getOutputStream()`).

**Customizing JSON Conversion:**
You can customize how serialization behaves by:
- Customizing `ObjectMapper` beans (e.g., configuring date-time formatting or naming strategies).
- Registering custom serializers/deserializers using `@JsonComponent` or adding them directly to Jackson''s module registry.', 'Spring MVC sử dụng một hệ thống các bộ chuyển đổi (converters) để xử lý dữ liệu payload của request và response. Quá trình chuyển đổi một đối tượng Java sang chuỗi JSON diễn ra qua các bước sau:

1. **Cấu hình HTTP Message Converters:**
   Khi khởi động, Spring Boot sẽ tự động cấu hình các class hiện thực của interface `HttpMessageConverter`. Đối với JSON, nếu Jackson (`jackson-databind`) có mặt trong classpath (đây là mặc định khi dùng `spring-boot-starter-web`), Spring sẽ tự động đăng ký `MappingJackson2HttpMessageConverter`.

2. **Cơ chế Thương lượng Nội dung (Content Negotiation):**
   Khi một phương thức controller trả về một đối tượng (và có đánh dấu `@ResponseBody` hoặc nằm trong class `@RestController`), Spring xác định định dạng response phù hợp bằng cách kiểm tra:
   - HTTP Header `Accept` từ request gửi lên (ví dụ: `Accept: application/json`).
   - Định dạng mặc định được cấu hình trong hệ thống.

3. **Quá trình chuyển đổi (Message Conversion):**
   - Spring sẽ duyệt qua danh sách các `HttpMessageConverter` đã đăng ký để tìm ra converter nào hỗ trợ ghi kiểu dữ liệu Java hiện tại thành Media Type đích (ví dụ: `application/json`).
   - `MappingJackson2HttpMessageConverter` được lựa chọn vì nó hỗ trợ kiểu media type là `application/json` và có khả năng chuyển đổi các lớp Java thông thường.

4. **Tuần tự hóa bằng thư viện Jackson (Serialization):**
   - Bộ chuyển đổi (converter) gọi `ObjectMapper` của Jackson bên dưới.
   - Jackson phân tích cấu trúc đối tượng (sử dụng Java Reflection, các phương thức Getter, hoặc đọc các cấu hình annotation như `@JsonProperty`, `@JsonIgnore`, `@JsonFormat`).
   - Jackson tuần tự hóa các thuộc tính của đối tượng thành một luồng byte JSON và ghi trực tiếp vào output stream của response (`HttpServletResponse.getOutputStream()`).

**Tùy biến hành vi chuyển đổi JSON:**
Bạn có thể tùy biến cách chuyển đổi bằng cách:
- Cấu hình lại bean `ObjectMapper` (ví dụ: định dạng ngày tháng, quy tắc đặt tên thuộc tính camelCase/snake_case).
- Đăng ký các bộ Serializer/Deserializer tùy biến bằng `@JsonComponent` hoặc đăng ký thủ công vào Jackson module.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-83', 'Spring MVC', 'Spring MVC', 'Mid', 'What is data binding in Spring MVC?', 'Data binding trong Spring MVC là gì?', 'Data binding in Spring MVC is the process of automatically mapping client HTTP request parameters (query parameters, path variables, form fields, headers) to Java objects (POJOs) or method parameters in a controller. This eliminates the need for developers to manually call `request.getParameter(...)` and parse data types (e.g., converting a String to an Integer).

#### Key Components of Data Binding:
1. **`DataBinder` & `WebDataBinder`**:
   The core engine that handles binding. When a request comes in, Spring instantiates a `WebDataBinder` for the controller method''s target model attribute or command object.
2. **`PropertyEditor` (Legacy)**:
   Originally used from the JavaBeans specification to convert string-based request parameters to target type objects. They are stateful and not thread-safe.
3. **`Converter` and `Formatter` (Modern)**:
   Introduced in Spring 3.0, the `Converter<S, T>` interface allows converting from source type `S` to target type `T`. The `Formatter<T>` interface is specific to web applications for converting string representations to object types (and vice-versa) based on localization/locale (e.g., date formats, currency). Both are stateless and thread-safe.
4. **`ConversionService`**:
   A unified service registry where converters and formatters are stored. The `WebDataBinder` delegates to the `ConversionService` during the binding phase.

#### Example Scenario:
If we have a controller handler:
```java
@PostMapping("/search")
public String searchProducts(@ModelAttribute SearchCriteria criteria) { ... }
```
And a client submits a form: `searchTerm=Java&minPrice=19.99&createdDate=2026-07-14`.
Spring MVC automatically:
- Instantiates a `SearchCriteria` object.
- Looks up registered converters or formatters to convert string `"19.99"` into a `BigDecimal` (for `minPrice`) and string `"2026-07-14"` into a `LocalDate` (for `createdDate`).
- Sets these values into the fields of the `SearchCriteria` instance.
- Performs binding validation if the parameter is annotated with validation annotations.', 'Data binding (Ràng buộc dữ liệu) trong Spring MVC là quá trình tự động ánh xạ các tham số từ HTTP request của client (như query parameters, path variables, form fields, HTTP headers) vào các đối tượng Java (POJOs) hoặc các tham số của phương thức trong controller. Cơ chế này loại bỏ hoàn toàn việc lập trình viên phải gọi thủ công `request.getParameter(...)` và ép kiểu dữ liệu (ví dụ: chuyển String thành Integer/Double).

#### Các thành phần chính của Data Binding:
1. **`DataBinder` & `WebDataBinder`**:
   Là bộ máy xử lý cốt lõi. Khi nhận request, Spring khởi tạo một `WebDataBinder` cho đối tượng target model hoặc command object của phương thức controller.
2. **`PropertyEditor` (Lịch sử)**:
   Được kế thừa từ đặc tả JavaBeans dùng để chuyển đổi các tham số dạng String thành đối tượng đích. Tuy nhiên, nó chứa trạng thái (stateful) và không an toàn khi chạy đa luồng (not thread-safe).
3. **`Converter` và `Formatter` (Hiện đại)**:
   Được giới thiệu từ Spring 3.0. Interface `Converter<S, T>` hỗ trợ chuyển đổi từ kiểu nguồn `S` sang kiểu đích `T`. Interface `Formatter<T>` được thiết kế chuyên biệt cho ứng dụng Web để chuyển đổi định dạng String thành đối tượng (và ngược lại) dựa trên thông tin bản địa hóa/ngôn ngữ (Locale - ví dụ: định dạng ngày tháng, tiền tệ). Cả hai đều không chứa trạng thái (stateless) và an toàn đa luồng.
4. **`ConversionService`**:
   Là một service registry tập trung chứa tất cả các converter và formatter đã đăng ký. `WebDataBinder` sẽ gọi `ConversionService` để thực hiện việc chuyển đổi kiểu dữ liệu.

#### Ví dụ minh họa:
Giả sử ta có phương thức controller:
```java
@PostMapping("/search")
public String searchProducts(@ModelAttribute SearchCriteria criteria) { ... }
```
Và client gửi một biểu mẫu chứa dữ liệu: `searchTerm=Java&minPrice=19.99&createdDate=2026-07-14`.
Spring MVC sẽ tự động:
- Khởi tạo đối tượng `SearchCriteria`.
- Tra cứu các bộ Converter hoặc Formatter thích hợp để chuyển chuỗi `"19.99"` thành kiểu `BigDecimal` (cho thuộc tính `minPrice`) và chuỗi `"2026-07-14"` thành kiểu `LocalDate` (cho thuộc tính `createdDate`).
- Thiết lập các giá trị đã chuyển đổi này vào các thuộc tính tương ứng của đối tượng `SearchCriteria`.
- Thực hiện kiểm tra tính hợp lệ dữ liệu (validation) nếu tham số được đánh dấu bằng các annotation kiểm tra hợp lệ.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-84', 'Spring Boot', 'Spring Boot', 'Mid', 'How is request validation implemented in Spring Boot?', 'Request validation được triển khai như thế nào trong Spring Boot?', 'Request validation in Spring Boot is standard-based, leveraging the **Jakarta Bean Validation** API (formerly JSR-380 / Bean Validation) and its default runtime provider, **Hibernate Validator**.

#### Steps to Implement Request Validation:
1. **Add Dependency:**
   Include the `spring-boot-starter-validation` dependency in your project.
   ```xml
   <dependency>
       <groupId>org.springframework.boot</groupId>
       <artifactId>spring-boot-starter-validation</artifactId>
   </dependency>
   ```

2. **Define Validation Constraints on the DTO/POJO:**
   Apply annotations from the `jakarta.validation.constraints` package directly on the target object''s fields.
   ```java
   public class UserDto {
       @NotBlank(message = "Username cannot be blank")
       @Size(min = 3, max = 50, message = "Username must be between 3 and 50 characters")
       private String username;

       @Email(message = "Invalid email format")
       @NotBlank(message = "Email is required")
       private String email;

       @Min(value = 18, message = "Age must be at least 18")
       private int age;
       
       // getters, setters...
   }
   ```

3. **Enable Validation in the Controller:**
   Use the `@Valid` (or `@Validated`) annotation before the `@RequestBody` or request parameter in the controller method.
   ```java
   @PostMapping("/users")
   public ResponseEntity<String> createUser(@Valid @RequestBody UserDto userDto) {
       // Validation occurs before entering this method body
       return ResponseEntity.ok("User is valid");
   }
   ```

4. **Handling Validation Failures:**
   If a client sends an invalid request (e.g., `age = 15`), Spring does not execute the method body. Instead, it throws a `MethodArgumentNotValidException` (for `@RequestBody` validation failures) or a `BindException` (for query parameters/form validation). You can handle this globally using a `@ControllerAdvice` or `@RestControllerAdvice` along with an `@ExceptionHandler` method.', 'Request validation (Kiểm tra dữ liệu đầu vào) trong Spring Boot được triển khai dựa trên các tiêu chuẩn công nghiệp, sử dụng đặc tả **Jakarta Bean Validation** (trước đây là JSR-380 / Bean Validation) và thư viện runtime mặc định đi kèm là **Hibernate Validator**.

#### Các bước triển khai Request Validation:
1. **Thêm thư viện phụ thuộc (Dependency):**
   Khai báo starter validation trong file cấu hình dự án (`pom.xml` hoặc `build.gradle`).
   ```xml
   <dependency>
       <groupId>org.springframework.boot</groupId>
       <artifactId>spring-boot-starter-validation</artifactId>
   </dependency>
   ```

2. **Định nghĩa các điều kiện kiểm tra (Constraints) trên DTO/POJO:**
   Sử dụng các annotation từ package `jakarta.validation.constraints` trực tiếp lên các trường dữ liệu của đối tượng nhận dữ liệu.
   ```java
   public class UserDto {
       @NotBlank(message = "Tên đăng nhập không được để trống")
       @Size(min = 3, max = 50, message = "Tên đăng nhập phải từ 3 đến 50 ký tự")
       private String username;

       @Email(message = "Định dạng email không hợp lệ")
       @NotBlank(message = "Email không được để trống")
       private String email;

       @Min(value = 18, message = "Tuổi phải từ 18 trở lên")
       private int age;
       
       // getters, setters...
   }
   ```

3. **Kích hoạt cơ chế Validation trong Controller:**
   Thêm annotation `@Valid` (hoặc `@Validated`) ngay trước `@RequestBody` hoặc trước tham số cần kiểm tra trong phương thức của Controller.
   ```java
   @PostMapping("/users")
   public ResponseEntity<String> createUser(@Valid @RequestBody UserDto userDto) {
       // Validation được thực hiện trước khi logic bên trong phương thức chạy
       return ResponseEntity.ok("Dữ liệu người dùng hợp lệ");
   }
   ```

4. **Xử lý khi Validation thất bại:**
   Nếu client gửi một request không hợp lệ (ví dụ: `age = 15`), Spring sẽ ngăn chặn việc thực thi logic nghiệp vụ trong method và ném ra ngoại lệ `MethodArgumentNotValidException` (khi validate `@RequestBody`) hoặc `BindException` (khi validate tham số truy vấn/form). Chúng ta có thể bắt và xử lý các ngoại lệ này một cách tập trung thông qua `@ControllerAdvice` hoặc `@RestControllerAdvice` kết hợp với `@ExceptionHandler`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-85', 'Spring MVC', 'Spring MVC', 'Mid', 'What is the difference between @Valid and @Validated?', 'Sự khác biệt giữa @Valid và @Validated là gì?', 'Both `@Valid` and `@Validated` are used to trigger validation processes in Spring, but they originate from different frameworks and support different feature sets:

#### 1. `@Valid` (Standard Jakarta Bean Validation)
- **Origin:** Part of the JSR-303 / JSR-380 specification (`jakarta.validation.Valid`).
- **Scope:** Can be used on method parameters, method return types, constructor parameters, and fields.
- **Nested Validation:** Essential for validation of nested objects. For example, if a `UserDto` has an `AddressDto` field, you must annotate the `AddressDto` field with `@Valid` inside the `UserDto` class for Spring to validate fields within the address.
- **Limitation:** Does not support validation grouping (Validation Groups).

#### 2. `@Validated` (Spring-specific Validation Extension)
- **Origin:** Spring Framework-specific annotation (`org.springframework.validation.annotation.Validated`).
- **Validation Groups:** Its key advantage is support for **Validation Groups**, which allow triggering different validation rules for different scenarios (e.g., updating a resource might require an `id` field to be validated using a `@NotNull` constraint grouped under an `OnUpdate` interface, whereas creating that resource might not).
- **Class-Level Method Validation:** Can be applied at the class level (e.g., on a `@Service` class) to enable validation for method parameters that are not bound to HTTP endpoints (e.g., validating custom service method inputs). Requires a `MethodValidationPostProcessor` bean (configured automatically by Spring Boot).

**Comparison Summary:**
| Feature | `@Valid` | `@Validated` |
| --- | --- | --- |
| **Source** | Jakarta Validation (Standard JSR) | Spring Framework |
| **Validation Groups** | No | Yes (allows targeted validation rules) |
| **Nested Validation** | Yes (required on child DTO properties) | No (typically not used on nested properties) |
| **Location** | Fields, Method parameters, Constructors | Classes, Method parameters |

**Typical Usage Pattern:**
Use `@Validated` on the controller class/method signature if validation groups are needed, or when enabling validation in Services. Use `@Valid` on nested member variables inside DTO classes to cascade validation.', 'Cả `@Valid` và `@Validated` đều được sử dụng để kích hoạt cơ chế kiểm tra tính hợp lệ (validation) trong Spring, nhưng chúng bắt nguồn từ các framework khác nhau và hỗ trợ các tính năng khác biệt:

#### 1. `@Valid` (Chuẩn JSR-380 / Jakarta Bean Validation)
- **Nguồn gốc:** Thuộc đặc tả tiêu chuẩn Java/Jakarta EE (`jakarta.validation.Valid`).
- **Phạm vi sử dụng:** Dùng trên tham số phương thức, kiểu trả về của phương thức, tham số constructor và các trường (fields) của class.
- **Kiểm tra lồng nhau (Nested Validation):** Bắt buộc phải dùng khi muốn validate các đối tượng lồng nhau. Ví dụ: Nếu `UserDto` chứa một thuộc tính là `AddressDto`, bạn phải đánh dấu thuộc tính `AddressDto` bằng `@Valid` bên trong lớp `UserDto` để Spring tiếp tục kiểm tra các trường con bên trong Address.
- **Hạn chế:** Không hỗ trợ cơ chế gom nhóm validation (Validation Groups).

#### 2. `@Validated` (Mở rộng chuyên biệt của Spring Framework)
- **Nguồn gốc:** Annotation do chính Spring phát triển (`org.springframework.validation.annotation.Validated`).
- **Gom nhóm Validation (Validation Groups):** Điểm mạnh vượt trội của `@Validated` là hỗ trợ gom nhóm validation. Nó cho phép áp dụng các quy tắc kiểm tra khác nhau tùy theo ngữ cảnh (ví dụ: Khi cập nhật tài nguyên - `update` - thì cần kiểm tra `id` không được null, nhưng khi tạo mới - `create` - thì trường `id` chưa được sinh ra nên không cần validate).
- **Validate cấp độ Class và Method ở tầng Service:** Có thể đặt ở cấp độ Class (ví dụ trên một `@Service` bean) để kích hoạt cơ chế validation cho bất kỳ tham số phương thức nào của service đó. Cơ chế này cần một bean `MethodValidationPostProcessor` (được cấu hình tự động bởi Spring Boot).

**Bảng so sánh tóm tắt:**
| Tiêu chí | `@Valid` | `@Validated` |
| --- | --- | --- |
| **Nguồn gốc** | Jakarta Validation (Tiêu chuẩn JSR) | Spring Framework |
| **Validation Groups** | Không hỗ trợ | Có hỗ trợ (cho phép chia nhóm quy tắc validation) |
| **Nested Validation** | Có hỗ trợ (bắt buộc đặt trên các DTO con) | Không hỗ trợ (không dùng trên các DTO con lồng nhau) |
| **Vị trí khai báo** | Trên fields, tham số method, constructor | Trên classes, tham số method |

**Mô hình sử dụng thực tế:**
Đặt `@Validated` trên method hoặc class controller/service nếu cần chia nhóm validation. Đặt `@Valid` trên các thuộc tính đối tượng lồng nhau (nested properties) bên trong các lớp DTO để thực hiện validate tuần tự vào sâu bên trong.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-86', 'Spring MVC', 'Spring MVC', 'Mid', 'How can validation errors be handled?', 'Làm thế nào để xử lý các lỗi validation?', 'Validation errors in Spring Boot can be handled using two main approaches: locally in the Controller or globally using a central exception handler.

#### Approach 1: Local Handling using `BindingResult`
You can inject a `BindingResult` parameter directly into your controller method immediately following the validated parameter. This prevents Spring from throwing an exception, allowing you to handle validation results manually.
```java
@PostMapping("/users")
public ResponseEntity<?> createUser(@Valid @RequestBody UserDto userDto, BindingResult bindingResult) {
    if (bindingResult.hasErrors()) {
        Map<String, String> errors = new HashMap<>();
        bindingResult.getFieldErrors().forEach(error -> 
            errors.put(error.getField(), error.getDefaultMessage())
        );
        return ResponseEntity.badRequest().body(errors);
    }
    // Proceed with business logic
    return ResponseEntity.ok("User created successfully");
}
```
*Note:* The `BindingResult` parameter **must** immediately follow the object being validated, or Spring will throw a runtime error.

#### Approach 2: Global Exception Handling (Recommended)
If `BindingResult` is omitted, validation failures will throw a `MethodArgumentNotValidException` (for JSON bodies) or a `BindException` (for query/form parameters). You can catch these globally:
```java
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<Map<String, List<String>>> handleValidationErrors(MethodArgumentNotValidException ex) {
        List<String> errors = ex.getBindingResult()
            .getFieldErrors()
            .stream()
            .map(FieldError::getDefaultMessage)
            .collect(Collectors.toList());
            
        Map<String, List<String>> errorResponse = new HashMap<>();
        errorResponse.put("errors", errors);
        
        return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
    }
}
```
This keeps controller code clean and provides a consistent error format across the entire application.', 'Các lỗi kiểm tra dữ liệu (validation errors) trong Spring Boot có thể được xử lý theo hai hướng tiếp cận chính: Xử lý cục bộ tại Controller hoặc xử lý tập trung (toàn cục) bằng exception handler.

#### Hướng tiếp cận 1: Xử lý cục bộ bằng `BindingResult`
Bạn có thể khai báo một đối tượng `BindingResult` làm tham số ngay sau tham số chứa dữ liệu được validate trong phương thức controller. Cách này ngăn Spring ném ra ngoại lệ và cho phép bạn tự xử lý kết quả validation:
```java
@PostMapping("/users")
public ResponseEntity<?> createUser(@Valid @RequestBody UserDto userDto, BindingResult bindingResult) {
    if (bindingResult.hasErrors()) {
        Map<String, String> errors = new HashMap<>();
        bindingResult.getFieldErrors().forEach(error -> 
            errors.put(error.getField(), error.getDefaultMessage())
        );
        return ResponseEntity.badRequest().body(errors);
    }
    // Tiếp tục thực hiện logic nghiệp vụ
    return ResponseEntity.ok("Tạo người dùng thành công");
}
```
*Lưu ý:* Tham số `BindingResult` **bắt buộc** phải được đặt ngay sau đối tượng được kiểm tra tính hợp lệ, nếu không Spring sẽ ném lỗi khi chạy.

#### Hướng tiếp cận 2: Xử lý toàn cục qua Global Exception Handler (Khuyên dùng)
Nếu không khai báo `BindingResult`, khi validation thất bại, Spring sẽ ném ra ngoại lệ `MethodArgumentNotValidException` (đối với JSON body) hoặc `BindException` (đối với tham số query/form). Ta có thể định nghĩa một class để bắt và định dạng lại các lỗi này:
```java
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<Map<String, List<String>>> handleValidationErrors(MethodArgumentNotValidException ex) {
        List<String> errors = ex.getBindingResult()
            .getFieldErrors()
            .stream()
            .map(FieldError::getDefaultMessage)
            .collect(Collectors.toList());
            
        Map<String, List<String>> errorResponse = new HashMap<>();
        errorResponse.put("errors", errors);
        
        return new ResponseEntity<>(errorResponse, HttpStatus.BAD_REQUEST);
    }
}
```
Cách tiếp cận này giúp giữ cho code của controller sạch sẽ và đảm bảo định dạng phản hồi lỗi thống nhất cho toàn bộ hệ thống.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-87', 'Spring MVC', 'Spring MVC', 'Mid', 'What is @ControllerAdvice used for?', '@ControllerAdvice được dùng để làm gì?', '`@ControllerAdvice` is a specialized stereotype annotation in Spring MVC that serves as an interceptor of exceptions, data binding, and model attributes across multiple controller classes (globally). It allows you to write centralized code that applies globally instead of repeating it in every individual controller.

#### Core Use Cases:
1. **Global Exception Handling:**
   Combined with `@ExceptionHandler` methods, it serves as a central hub to catch exceptions thrown anywhere in the MVC controller layer.
2. **Global Data Binding & Customization:**
   Combined with `@InitBinder`, it allows configuring `WebDataBinder` instances globally (e.g., registering custom property editors, formatters, or setting disallowed fields).
3. **Global Model Attributes:**
   Combined with `@ModelAttribute`, it makes certain key-value attributes available to the Model context across all web views (useful for template engines).

#### `@RestControllerAdvice` vs `@ControllerAdvice`:
- `@ControllerAdvice` targets standard MVC controllers returning view names.
- `@RestControllerAdvice` is a composed annotation that combines `@ControllerAdvice` and `@ResponseBody`. This is the preferred choice for REST APIs because it ensures that return values from `@ExceptionHandler` methods are serialized directly to the HTTP response body as JSON.

**Example Structure:**
```java
@RestControllerAdvice
public class GlobalRestControllerAdvice {
    
    // Globally register a date formatter/binder
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        // Custom binding configurations
    }

    // Globally add an attribute for views (or controllers)
    @ModelAttribute("appName")
    public String addAppName() {
        return "My Enterprise System";
    }
}
```', '`@ControllerAdvice` là một annotation đặc biệt (stereotype annotation) trong Spring MVC đóng vai trò như một bộ đánh chặn (interceptor) dùng để xử lý các ngoại lệ (exceptions), cấu hình binding dữ liệu, hoặc định nghĩa các thuộc tính model dùng chung cho nhiều controller khác nhau trên phạm vi toàn cục (global). Nó giúp tập trung hóa code thay vì phải lặp lại cấu hình trong từng controller riêng lẻ.

#### Các chức năng cốt lõi:
1. **Xử lý ngoại lệ toàn cục (Global Exception Handling):**
   Kết hợp với các phương thức `@ExceptionHandler` để làm nơi bắt và xử lý tập trung mọi exception được ném ra từ tầng controller.
2. **Cấu hình Binding dữ liệu toàn cục:**
   Kết hợp với `@InitBinder` để định cấu hình các instance `WebDataBinder` một cách tập trung (ví dụ: đăng ký các bộ chuyển đổi PropertyEditors, Formatters hoặc loại bỏ các thuộc tính không được phép bind).
3. **Cung cấp thuộc tính Model dùng chung:**
   Kết hợp với `@ModelAttribute` để thêm các giá trị thuộc tính vào context Model, giúp các template engine dễ dàng truy xuất dữ liệu dùng chung (như thông tin hệ thống, tên ứng dụng).

#### So sánh `@RestControllerAdvice` và `@ControllerAdvice`:
- `@ControllerAdvice` hướng tới các controller MVC truyền thống (trả về tên của view template).
- `@RestControllerAdvice` là "composed annotation" kết hợp giữa `@ControllerAdvice` và `@ResponseBody`. Đây là lựa chọn tối ưu cho các REST API bởi vì nó đảm bảo dữ liệu trả về từ các method `@ExceptionHandler` được tuần tự hóa thẳng sang JSON và gửi vào response body.

**Ví dụ cấu trúc:**
```java
@RestControllerAdvice
public class GlobalRestControllerAdvice {
    
    // Đăng ký định dạng/kiểu bind ngày tháng toàn cục
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        // Các cấu hình binding cụ thể
    }

    // Tự động thêm một thuộc tính vào Model toàn cục
    @ModelAttribute("appName")
    public String addAppName() {
        return "My Enterprise System";
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-88', 'Spring MVC', 'Spring MVC', 'Mid', 'What is @ExceptionHandler used for?', '@ExceptionHandler được dùng để làm gì?', '`@ExceptionHandler` is a Spring MVC annotation used to define a method that handles specific exceptions thrown during the execution of controller handler methods.

#### Key Features:
- **Scope:**
  - If declared **inside a specific Controller**, it will only handle exceptions thrown by that controller''s methods.
  - If declared **inside a `@ControllerAdvice` class**, it will handle exceptions globally across all controllers in the application.
- **Exception Mapping:**
  You can specify one or more target exception classes in its value attribute: `@ExceptionHandler({NullPointerException.class, IllegalArgumentException.class})`. If omitted, Spring defaults to mapping the exception defined as the method argument.
- **Flexible Method Signatures:**
  Methods annotated with `@ExceptionHandler` can accept parameters like the thrown exception itself (`Exception`, `RuntimeException`, etc.), `WebRequest`, `HttpServletRequest`, or `Locale`. They can return `ResponseEntity`, custom error objects (annotated with `@ResponseBody`), or String (representing view names).

**Example:**
```java
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<ErrorResponse> handleNotFound(ResourceNotFoundException ex) {
        ErrorResponse error = new ErrorResponse("NOT_FOUND", ex.getMessage());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(error);
    }
}
```
In this example, whenever a `ResourceNotFoundException` is thrown anywhere in the request lifecycle of a controller, the execution flow intercepts it and returns a `404 Not Found` response with a structured JSON payload.', '`@ExceptionHandler` là một annotation trong Spring MVC được dùng để định nghĩa một phương thức chuyên xử lý các ngoại lệ (exceptions) cụ thể được ném ra trong quá trình thực thi các phương thức xử lý (handler methods) của controller.

#### Đặc tính quan trọng:
- **Phạm vi hoạt động:**
  - Nếu khai báo **bên trong một Controller cụ thể**, nó chỉ có nhiệm vụ xử lý các exception phát sinh từ chính controller đó.
  - Nếu khai báo **bên trong một lớp `@ControllerAdvice` / `@RestControllerAdvice`**, nó sẽ trở thành bộ xử lý ngoại lệ toàn cục, áp dụng cho tất cả các controller trong toàn bộ ứng dụng.
- **Cơ chế ánh xạ Exception:**
  Bạn có thể định nghĩa một hoặc nhiều class exception cụ thể trong thuộc tính value của nó: `@ExceptionHandler({NullPointerException.class, IllegalArgumentException.class})`. Nếu bỏ trống value, Spring mặc định sẽ ánh xạ theo kiểu dữ liệu của exception được khai báo làm tham số trong phương thức.
- **Tính linh hoạt của tham số:**
  Phương thức được đánh dấu với `@ExceptionHandler` có thể nhận các tham số đầu vào đa dạng như bản thân đối tượng exception bị ném ra (`Exception`, `RuntimeException`), `WebRequest`, `HttpServletRequest`, hoặc `Locale`. Nó có thể trả về một đối tượng `ResponseEntity`, một DTO tùy biến (kết hợp với `@ResponseBody`) hoặc một chuỗi String (tên view template).

**Ví dụ:**
```java
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<ErrorResponse> handleNotFound(ResourceNotFoundException ex) {
        ErrorResponse error = new ErrorResponse("NOT_FOUND", ex.getMessage());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(error);
    }
}
```
Trong ví dụ này, bất cứ khi nào một `ResourceNotFoundException` bị ném ra từ bất kỳ controller nào, luồng xử lý sẽ bắt lấy exception đó và trả về mã HTTP `404 Not Found` kèm theo dữ liệu JSON cấu trúc rõ ràng cho client.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-89', 'REST', 'REST', 'Mid', 'How should a REST API return error responses?', 'Một REST API nên trả về các phản hồi lỗi (error responses) như thế nào?', 'A REST API should return error responses using standard HTTP status codes combined with a consistent, structured payload that describes the error. 

### 1. Key Principles for Error Handling
* **Use Standard HTTP Status Codes:** Align errors with appropriate codes (e.g., `400 Bad Request` for client input validation failures, `404 Not Found` for missing resources, `500 Internal Server Error` for unhandled server exceptions).
* **Return a Consistent Payload Structure:** The response body should have a standardized format across the entire API, making it easy for clients to parse.
* **Adopt RFC 7807 (Problem Details):** This is the industry standard for returning machine-readable error details from HTTP APIs.
* **Prevent Sensitive Information Leakage:** Never return stack traces, database schema details, or internal server errors to the client in production.

### 2. Standardized Error Payload Structure (RFC 7807 Example)
```json
{
  "type": "https://api.example.com/errors/validation-error",
  "title": "Bad Request",
  "status": 400,
  "detail": "The request body failed to validate because some fields were invalid.",
  "instance": "/api/v1/users",
  "timestamp": "2026-07-14T00:54:20Z",
  "errors": [
    {
      "field": "email",
      "message": "Must be a well-formed email address"
    }
  ]
}
```

### 3. Spring Boot Implementation using `@RestControllerAdvice`
You can implement a centralized exception handler using `@RestControllerAdvice` and `@ExceptionHandler`:

```java
@RestControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(UserNotFoundException.class)
    public ResponseEntity<ProblemDetail> handleUserNotFound(UserNotFoundException ex, WebRequest request) {
        ProblemDetail problemDetail = ProblemDetail.forStatusAndDetail(
            HttpStatus.NOT_FOUND, 
            ex.getMessage()
        );
        problemDetail.setTitle("Resource Not Found");
        problemDetail.setType(URI.create("https://api.example.com/errors/not-found"));
        problemDetail.setProperty("timestamp", Instant.now());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(problemDetail);
    }

    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex, 
            HttpHeaders headers, 
            HttpStatusCode status, 
            WebRequest request) {
        
        ProblemDetail problemDetail = ProblemDetail.forStatusAndDetail(
            HttpStatus.BAD_REQUEST, 
            "Validation failed for one or more fields."
        );
        problemDetail.setTitle("Validation Error");
        
        List<Map<String, String>> errors = ex.getBindingResult()
            .getFieldErrors()
            .stream()
            .map(error -> Map.of(
                "field", error.getField(),
                "message", Objects.requireNonNullElse(error.getDefaultMessage(), "Invalid value")
            ))
            .collect(Collectors.toList());
            
        problemDetail.setProperty("errors", errors);
        problemDetail.setProperty("timestamp", Instant.now());
        
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(problemDetail);
    }
}
```', 'Một REST API nên trả về phản hồi lỗi bằng cách kết hợp mã trạng thái HTTP chuẩn (HTTP Status Code) và một cấu trúc dữ liệu (payload) đồng nhất, mô tả rõ ràng về lỗi xảy ra.

### 1. Các nguyên tắc cốt lõi khi xử lý lỗi
* **Sử dụng HTTP Status Code chuẩn:** Ánh xạ lỗi vào đúng mã trạng thái (ví dụ: `400 Bad Request` cho lỗi dữ liệu đầu vào, `404 Not Found` khi không tìm thấy tài nguyên, `500 Internal Server Error` cho các lỗi hệ thống không mong muốn).
* **Định dạng cấu trúc phản hồi lỗi đồng nhất:** Phản hồi lỗi phải có cùng cấu trúc ở mọi endpoint để phía client có thể dễ dàng phân tích (parse).
* **Tuân thủ chuẩn RFC 7807 (Problem Details):** Đây là tiêu chuẩn công nghiệp mô tả thông tin lỗi trong HTTP API một cách chi tiết và dễ đọc cho cả máy và người.
* **Bảo mật thông tin nội bộ:** Tuyệt đối không trả về stack trace, thông tin DB, hay chi tiết kỹ thuật hệ thống ra môi trường production vì có thể dẫn tới lỗ hổng bảo mật.

### 2. Cấu trúc Payload lỗi chuẩn hóa (Ví dụ RFC 7807)
```json
{
  "type": "https://api.example.com/errors/validation-error",
  "title": "Bad Request",
  "status": 400,
  "detail": "Yêu cầu không hợp lệ do một số trường dữ liệu không đúng định dạng.",
  "instance": "/api/v1/users",
  "timestamp": "2026-07-14T00:54:20Z",
  "errors": [
    {
      "field": "email",
      "message": "Địa chỉ email không đúng định dạng"
    }
  ]
}
```

### 3. Triển khai trong Spring Boot với `@RestControllerAdvice`
Bạn có thể cấu hình bộ xử lý lỗi tập trung bằng `@RestControllerAdvice` kết hợp `@ExceptionHandler`:

```java
@RestControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(UserNotFoundException.class)
    public ResponseEntity<ProblemDetail> handleUserNotFound(UserNotFoundException ex, WebRequest request) {
        ProblemDetail problemDetail = ProblemDetail.forStatusAndDetail(
            HttpStatus.NOT_FOUND, 
            ex.getMessage()
        );
        problemDetail.setTitle("Resource Not Found");
        problemDetail.setType(URI.create("https://api.example.com/errors/not-found"));
        problemDetail.setProperty("timestamp", Instant.now());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(problemDetail);
    }

    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex, 
            HttpHeaders headers, 
            HttpStatusCode status, 
            WebRequest request) {
        
        ProblemDetail problemDetail = ProblemDetail.forStatusAndDetail(
            HttpStatus.BAD_REQUEST, 
            "Xác thực dữ liệu thất bại."
        );
        problemDetail.setTitle("Validation Error");
        
        List<Map<String, String>> errors = ex.getBindingResult()
            .getFieldErrors()
            .stream()
            .map(error -> Map.of(
                "field", error.getField(),
                "message", Objects.requireNonNullElse(error.getDefaultMessage(), "Giá trị không hợp lệ")
            ))
            .collect(Collectors.toList());
            
        problemDetail.setProperty("errors", errors);
        problemDetail.setProperty("timestamp", Instant.now());
        
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(problemDetail);
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-90', 'REST', 'REST', 'Junior', 'What is a RESTful API?', 'RESTful API là gì?', 'A **RESTful API** is an Application Programming Interface (API) that adheres to the constraints and design principles of the **REST (Representational State Transfer)** architectural style. REST was introduced by Roy Fielding in his doctoral dissertation in 2000.

### 1. Key Principles of REST
An API is considered RESTful if it utilizes standard HTTP operations and conforms to the following key design aspects:
* **Resources as URIs:** Everything is modeled as a resource (e.g., users, orders) identified by a unique Uniform Resource Identifier (URI), such as `/api/v1/users`.
* **Standard HTTP Methods:** It uses standard HTTP verbs (`GET`, `POST`, `PUT`, `PATCH`, `DELETE`) to perform CRUD (Create, Read, Update, Delete) operations.
* **Representations:** Resources can be represented in different formats, most commonly JSON or XML. Clients manipulate resources through these representations.
* **HTTP Status Codes:** It communicates the outcome of requests using standard HTTP response status codes (e.g., `200 OK`, `201 Created`, `400 Bad Request`, `404 Not Found`).

### 2. Constraints of REST
For an API to be strictly RESTful, it must satisfy six core architectural constraints:
1. **Client-Server Architecture:** Separation of concerns between the user interface (client) and the data storage (server).
2. **Statelessness:** Each request from a client must contain all the information needed to understand and process the request. The server does not store any client context (session state) between requests.
3. **Cacheability:** Responses must implicitly or explicitly define themselves as cacheable or non-cacheable to improve network efficiency.
4. **Layered System:** The client cannot tell whether it is connected directly to the end server or to an intermediary (like a load balancer, CDN, or proxy).
5. **Uniform Interface:** A standardized interface between clients and servers. This is the defining constraint of REST.
6. **Code on Demand (Optional):** The server can temporarily extend client functionality by transferring executable code (e.g., JavaScript).

### 3. Example of RESTful vs. Non-RESTful Design
* **Non-RESTful (RPC style):**
  * `POST /api/createUser` (uses verb in URI)
  * `POST /api/getUser?id=5`
* **RESTful:**
  * `POST /api/users` (creates a user)
  * `GET /api/users/5` (retrieves user with ID 5)', '**RESTful API** là một giao diện lập trình ứng dụng (API) tuân thủ đầy đủ các nguyên lý thiết kế và ràng buộc của phong cách kiến trúc **REST (Representational State Transfer)**. REST được giới thiệu bởi Roy Fielding trong luận án tiến sĩ của ông vào năm 2000.

### 1. Các Nguyên Tắc Chính Của REST
Một API được coi là RESTful nếu nó sử dụng các giao thức HTTP chuẩn và tuân theo các khía cạnh thiết kế sau:
* **Tài nguyên (Resources) được định danh bằng URI:** Mọi thực thể dữ liệu (ví dụ: users, orders) đều được coi là một tài nguyên và định danh duy nhất bằng URI (ví dụ: `/api/v1/users`).
* **Sử dụng các phương thức HTTP chuẩn:** Sử dụng các động từ HTTP (`GET`, `POST`, `PUT`, `PATCH`, `DELETE`) để thực hiện các thao tác CRUD (Thêm, Đọc, Sửa, Xóa).
* **Đại diện tài nguyên (Representations):** Tài nguyên có thể được biểu diễn dưới nhiều định dạng khác nhau, phổ biến nhất là JSON hoặc XML. Client tương tác với tài nguyên thông qua định dạng này.
* **HTTP Status Codes:** Sử dụng mã trạng thái HTTP chuẩn để thông báo kết quả xử lý yêu cầu (ví dụ: `200 OK`, `201 Created`, `400 Bad Request`, `404 Not Found`).

### 2. Các Ràng Buộc Của REST
Để một API được gọi là RESTful thực thụ, nó phải tuân thủ 6 ràng buộc kiến trúc sau:
1. **Client-Server Architecture:** Phân tách rõ ràng giữa giao diện người dùng (client) và hệ thống lưu trữ dữ liệu (server).
2. **Statelessness (Không lưu trạng thái):** Mỗi request từ client lên server phải chứa đầy đủ thông tin để server xử lý độc lập. Server không lưu trữ bất kỳ thông tin ngữ cảnh (session) nào của client giữa các request.
3. **Cacheability (Khả năng lưu bộ nhớ đệm):** Các phản hồi từ server phải xác định rõ là có được phép cache hay không để giảm tải cho hệ thống mạng.
4. **Layered System (Hệ thống phân tầng):** Client không cần biết mình đang kết nối trực tiếp đến server chính hay qua các thiết bị trung gian (load balancer, CDN, proxy).
5. **Uniform Interface (Giao diện đồng nhất):** Đây là ràng buộc quan trọng nhất của REST, yêu cầu giao diện giữa client và server phải đồng nhất (sử dụng chuẩn URI, các phương thức HTTP chuẩn, tự mô tả thông điệp, HATEOAS).
6. **Code on Demand (Tùy chọn):** Server có thể gửi mã thực thi (ví dụ: JavaScript) về để client chạy trực tiếp nhằm mở rộng tính năng tạm thời.

### 3. Ví dụ So Sánh RESTful và Phi-RESTful
* **Không phải RESTful (phong cách RPC):**
  * `POST /api/createUser` (chứa động từ hành động trên URI)
  * `POST /api/getUser?id=5`
* **RESTful:**
  * `POST /api/users` (tạo mới một user)
  * `GET /api/users/5` (lấy thông tin user có ID là 5)', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-91', 'REST', 'REST', 'Mid', 'What are the main constraints of REST?', 'Các ràng buộc chính của REST là gì?', 'REST (Representational State Transfer) is defined by six architectural constraints. Conforming to these constraints allows the system to scale, evolve, and perform efficiently.

### 1. Client-Server Architecture
This constraint is based on the **separation of concerns**. 
* **Concept:** By separating user interface concerns (client) from data storage concerns (server), we improve the portability of the user interface across multiple platforms and improve scalability by simplifying the server components.
* **Benefit:** The client and server can be developed and scaled independently.

### 2. Statelessness (Stateless)
* **Concept:** The server must not store any session state or client context. Each request from any client must contain all the information necessary to service the request (including authentication credentials).
* **Benefit:** High scalability (requests can be routed to any server instance without session replication) and reliability (easier to recover from server failures).

### 3. Cacheability
* **Concept:** Data within a response must be implicitly or explicitly labeled as cacheable or non-cacheable. If a response is cacheable, a client browser or intermediate proxy is given the right to reuse that response data for later, equivalent requests.
* **Benefit:** Reduces latency, saves network bandwidth, and decreases the load on the backend server.

### 4. Layered System
* **Concept:** An application architecture can be composed of hierarchical layers. A component cannot "see" beyond the immediate layer with which it is interacting. For example, a client cannot tell if it is connected directly to the database/application server or via proxies, CDNs, and load balancers.
* **Benefit:** Enables the easy addition of load balancers, security layers (firewalls), and shared caches without modifying client code.

### 5. Uniform Interface
This is the core distinguishing feature of the REST architectural style. It is decomposed into four sub-constraints:
* **Resource Identification in Requests:** Individual resources are identified in requests, for example using URIs. The resources themselves are conceptually separate from the representations returned to the client.
* **Resource Manipulation through Representations:** When a client holds a representation of a resource (e.g., a JSON document), including any metadata attached, it has enough information to modify or delete the resource on the server (provided it has permission).
* **Self-Descriptive Messages:** Each message includes enough information to describe how to process the message. For example, the `Content-Type` header tells the recipient how to parse the payload (e.g., `application/json`).
* **HATEOAS (Hypermedia As The Engine Of Application State):** The client should discover all available actions dynamically through hyperlinks returned in resource representations, rather than hardcoding resource locations.

### 6. Code on Demand (Optional)
* **Concept:** Servers can temporarily extend or customize the functionality of a client by transferring executable code (e.g., compiled Java applets, JavaScript scripts).
* **Benefit:** Simplifies client development by reducing the number of pre-installed features.', 'REST (Representational State Transfer) được định nghĩa bởi sáu ràng buộc kiến trúc. Việc tuân thủ các ràng buộc này giúp hệ thống đạt khả năng mở rộng tốt, dễ dàng nâng cấp và hoạt động hiệu quả.

### 1. Kiến trúc Client-Server (Client-Server Architecture)
Ràng buộc này dựa trên nguyên tắc **phân tách mối quan tâm (separation of concerns)**.
* **Khái niệm:** Phân tách độc lập giữa giao diện/trải nghiệm người dùng (client) và phần lưu trữ, xử lý dữ liệu (server).
* **Lợi ích:** Client và server có thể phát triển, triển khai và mở rộng độc lập mà không ảnh hưởng tới nhau.

### 2. Không lưu trạng thái (Statelessness)
* **Khái niệm:** Server không lưu trữ bất kỳ thông tin ngữ cảnh hay phiên làm việc (session state) nào của client. Mỗi request gửi từ client lên server bắt buộc phải chứa đầy đủ thông tin để tự thực hiện (bao gồm thông tin xác thực).
* **Lợi ích:** Nâng cao khả năng mở rộng (load balancer có thể chuyển tiếp request đến bất kỳ server nào mà không cần nhân bản session) và tăng độ tin cậy khi phục hồi sau sự cố.

### 3. Khả năng lưu bộ nhớ đệm (Cacheability)
* **Khái niệm:** Phản hồi từ server phải xác định rõ ràng (ngầm định hoặc tường minh) là có thể được lưu trữ (cache) hay không. Nếu phản hồi được phép cache, client hoặc các proxy trung gian có thể tái sử dụng dữ liệu này cho các request giống nhau tiếp theo.
* **Lợi ích:** Giảm độ trễ, tiết kiệm băng thông mạng và giảm tải cho máy chủ.

### 4. Hệ thống phân tầng (Layered System)
* **Khái niệm:** Kiến trúc hệ thống có thể gồm nhiều tầng phân cấp khác nhau. Mỗi thành phần không thể nhìn thấy các tầng nằm ngoài tầng tiếp xúc trực tiếp của nó. Client không thể phân biệt được mình đang kết nối trực tiếp với server ứng dụng hay đi qua proxy, CDN, load balancer.
* **Lợi ích:** Dễ dàng bổ sung thêm tường lửa, cân bằng tải hoặc cache dùng chung mà không cần thay đổi code của client.

### 5. Giao diện đồng nhất (Uniform Interface)
Đây là ràng buộc cốt lõi phân biệt REST với các phong cách kiến trúc khác, gồm 4 nguyên tắc nhỏ:
* **Định danh tài nguyên qua yêu cầu (Resource Identification):** Các tài nguyên riêng biệt được định danh trong request (thường qua URI). Tài nguyên tách biệt khỏi các biểu diễn (representations) trả về cho client.
* **Thao tác tài nguyên qua đại diện (Resource Manipulation through Representations):** Khi client giữ một bản đại diện của tài nguyên (ví dụ: file JSON) kèm metadata, client có đủ thông tin để sửa đổi hoặc xóa tài nguyên trên server (nếu được phép).
* **Thông điệp tự mô tả (Self-Descriptive Messages):** Mỗi thông điệp phải chứa đủ thông tin để bên nhận hiểu cách xử lý. Ví dụ, header `Content-Type` chỉ định cách parse payload (như `application/json`).
* **HATEOAS (Hypermedia As The Engine Of Application State):** Client khám phá các hành động khả dụng tiếp theo một cách động thông qua các siêu liên kết (hyperlinks) được trả về trong payload, thay vì hardcode các URL.

### 6. Mã nguồn theo yêu cầu (Code on Demand - Tùy chọn)
* **Khái niệm:** Server có thể tạm thời mở rộng hoặc tùy biến chức năng của client bằng cách gửi về các đoạn mã thực thi (như mã JavaScript, applet).
* **Lợi ích:** Đơn giản hóa client bằng cách giảm bớt các tính năng cần cài đặt sẵn trước đó.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-92', 'REST', 'REST', 'Junior', 'What is the difference between GET, POST, PUT, PATCH, and DELETE?', 'Sự khác biệt giữa GET, POST, PUT, PATCH và DELETE là gì?', 'In a RESTful API, HTTP methods (often referred to as verbs) specify the action to be performed on a resource. The primary differences lie in their purpose, safety, and idempotency.

### 1. Detailed Overview of Each Method

| Method | CRUD Action | Purpose | Safe? | Idempotent? | Cacheable? |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **GET** | Read | Retrieve representation of a resource. | **Yes** | **Yes** | **Yes** |
| **POST** | Create | Create a new subordinate resource. | No | No | Only if explicit |
| **PUT** | Update / Upsert | Replace an existing resource, or create if it doesn''t exist. | No | **Yes** | No |
| **PATCH** | Partial Update | Apply partial modifications to a resource. | No | No (usually) | Only if explicit |
| **DELETE** | Delete | Remove a resource. | No | **Yes** | No |

---

### 2. Deeper Explanation

* **GET:** 
  * Retrieves data from the server. It must not alter the server state (making it **safe**). 
  * Multiple calls return the same result (making it **idempotent**).
  * *Example:* `GET /api/users/123` retrieves user 123.
* **POST:** 
  * Submits data to the server to create a new resource. The server determines the new resource''s URI.
  * It is **neither safe nor idempotent** because calling it multiple times will create multiple resources.
  * *Example:* `POST /api/users` creates a new user and returns `201 Created`.
* **PUT:** 
  * Replaces the target resource entirely with the request payload. If the resource does not exist, PUT can create it (Upsert).
  * It is **idempotent**: sending the exact same payload multiple times will result in the same state on the server.
  * *Example:* `PUT /api/users/123` replaces all fields of user 123.
* **PATCH:** 
  * Applies partial modifications to a resource. Instead of sending the whole entity, you send only the fields to change.
  * It is **not guaranteed to be idempotent**. For example, appending an item to a list or incrementing a value is not idempotent.
  * *Example:* `PATCH /api/users/123` with body `{"email": "new@email.com"}` updates only the email.
* **DELETE:** 
  * Deletes the specified resource.
  * It is **idempotent**. The first delete removes the resource. Subsequent deletes will not change the state (the resource remains gone), although the response code might differ (e.g., `204 No Content` first, then `404 Not Found`).
  * *Example:* `DELETE /api/users/123` deletes user 123.', 'Trong RESTful API, các phương thức HTTP (HTTP Methods) định nghĩa hành động cần thực hiện lên tài nguyên. Sự khác biệt chủ yếu giữa chúng nằm ở mục đích sử dụng, tính an toàn (safe) và tính bất biến (idempotent).

### 1. Bảng so sánh tổng quan các phương thức

| Phương thức | Thao tác CRUD | Mục đích | An toàn (Safe)? | Idempotent (Lặp lại)? | Cho phép Cache? |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **GET** | Read (Đọc) | Lấy thông tin tài nguyên từ server. | **Có** | **Có** | **Có** |
| **POST** | Create (Tạo) | Tạo mới một tài nguyên con. | Không | Không | Chỉ khi cấu hình rõ |
| **PUT** | Update / Upsert | Thay thế toàn bộ tài nguyên (hoặc tạo nếu chưa có). | Không | **Có** | Không |
| **PATCH** | Partial Update | Cập nhật một phần của tài nguyên. | Không | Không (thường là vậy) | Chỉ khi cấu hình rõ |
| **DELETE** | Delete (Xóa) | Xóa tài nguyên trên server. | Không | **Có** | Không |

---

### 2. Chi tiết từng phương thức

* **GET:**
  * Chỉ dùng để truy xuất dữ liệu từ server mà không làm thay đổi trạng thái dữ liệu (được gọi là **an toàn**).
  * Gọi nhiều lần với cùng tham số sẽ luôn nhận được kết quả tương tự (**idempotent**).
  * *Ví dụ:* `GET /api/users/123` lấy thông tin của user 123.
* **POST:**
  * Gửi dữ liệu lên server để tạo mới một tài nguyên. Server sẽ tự sinh ID hoặc đường dẫn cho tài nguyên mới đó.
  * **Không an toàn và không idempotent** vì gọi nhiều lần sẽ tạo ra nhiều bản ghi trùng lặp trên database.
  * *Ví dụ:* `POST /api/users` tạo mới một user và trả về `201 Created`.
* **PUT:**
  * Thay thế toàn bộ dữ liệu của tài nguyên hiện tại bằng dữ liệu mới gửi lên. Nếu tài nguyên chưa tồn tại, PUT có thể tạo mới (chế độ Upsert).
  * Có tính **idempotent**: gửi cùng một gói tin cập nhật nhiều lần thì trạng thái cuối cùng của tài nguyên trên server vẫn không đổi.
  * *Ví dụ:* `PUT /api/users/123` ghi đè toàn bộ thông tin của user 123.
* **PATCH:**
  * Cập nhật một phần dữ liệu của tài nguyên. Bạn chỉ cần gửi lên các trường cần thay đổi thay vị toàn bộ đối tượng.
  * **Không đảm bảo tính idempotent**. Ví dụ, nếu body của PATCH chứa lệnh tăng lương thêm 10% hay thêm phần tử vào danh sách, gọi nhiều lần sẽ thực hiện phép cộng nhiều lần.
  * *Ví dụ:* `PATCH /api/users/123` với body `{"email": "new@email.com"}` chỉ thay đổi email của user 123.
* **DELETE:**
  * Yêu cầu xóa tài nguyên đã chỉ định khỏi server.
  * Có tính **idempotent**. Lần gọi đầu tiên sẽ xóa tài nguyên. Các lần gọi tiếp theo không thay đổi trạng thái của server nữa (vì tài nguyên đã biến mất), mặc dù mã HTTP trả về có thể khác nhau (lần đầu là `200` hoặc `204`, các lần sau là `404`).
  * *Ví dụ:* `DELETE /api/users/123` xóa user 123.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-93', 'REST', 'REST', 'Mid', 'What is the difference between PUT and PATCH?', 'Sự khác biệt giữa PUT và PATCH là gì?', 'Both **PUT** and **PATCH** are used to update resources in RESTful APIs, but they differ fundamentally in the completeness of the update and their idempotency.

### 1. Core Differences

| Feature | PUT (Full Replacement) | PATCH (Partial Modification) |
| :--- | :--- | :--- |
| **Scope of Update** | Replaces the **entire resource**. | Modifies **only the specified fields**. |
| **Payload Requirement** | Must send the full representation of the resource. | Sends only the fields that need change (or delta instructions). |
| **Missing Fields** | Fields omitted from the payload are set to `null` or default values. | Fields omitted from the payload remain unchanged. |
| **Idempotency** | Strictly **Idempotent**. | **Non-Idempotent** (in general practice). |
| **RFC Specification** | RFC 7231 (HTTP/1.1 Semantics) | RFC 5789 (PATCH Method for HTTP) |

---

### 2. Practical Examples

#### Scenario: Updating a User Resource
Suppose we have a user resource at `/api/users/1` with the following data:
```json
{
  "id": 1,
  "name": "John Doe",
  "email": "john@example.com",
  "status": "ACTIVE"
}
```

#### Example A: Using PUT
We want to update the email to `john.doe@example.com`. Since PUT replaces the entire resource, we **must** send all fields:
```http
PUT /api/users/1
Content-Type: application/json

{
  "name": "John Doe",
  "email": "john.doe@example.com",
  "status": "ACTIVE"
}
```
*If we accidentally omit `"status"` in PUT, the server might set `"status"` to `null` or a default value:*
```json
// Resulting Resource after a bad PUT (omitting status)
{
  "id": 1,
  "name": "John Doe",
  "email": "john.doe@example.com",
  "status": null
}
```

#### Example B: Using PATCH
We want to update only the email. With PATCH, we send only the changed field:
```http
PATCH /api/users/1
Content-Type: application/json

{
  "email": "john.doe@example.com"
}
```
*The server merges this with the existing state, leaving the other fields untouched:*
```json
// Resulting Resource after PATCH
{
  "id": 1,
  "name": "John Doe",
  "email": "john.doe@example.com",
  "status": "ACTIVE"
}
```

---

### 3. Understanding Idempotency in PATCH
* **PUT is idempotent:** Re-sending the same PUT payload 10 times results in the exact same state as sending it once.
* **PATCH is not strictly idempotent:** While a patch body containing `{"email": "john.doe@example.com"}` is idempotent, PATCH also supports operational instructions (like JSON Patch, RFC 6902). If your PATCH payload is:
  ```json
  [
    { "op": "add", "path": "/loginHistory", "value": "2026-07-14T00:54:20Z" }
  ]
  ```
  Running this PATCH request 3 times will append 3 entries to the login history, making the side effects cumulative (non-idempotent).', 'Cả **PUT** và **PATCH** đều được sử dụng để cập nhật tài nguyên trong RESTful API, nhưng chúng khác nhau cơ bản ở phạm vi cập nhật và tính lặp lại (idempotent).

### 1. Sự khác biệt cốt lõi

| Đặc điểm | PUT (Thay thế toàn bộ) | PATCH (Cập nhật một phần) |
| :--- | :--- | :--- |
| **Phạm vi cập nhật** | Thay thế **toàn bộ tài nguyên** bằng payload mới. | Chỉ sửa đổi **các trường được chỉ định**. |
| **Yêu cầu Payload** | Phải gửi toàn bộ thuộc tính của tài nguyên. | Chỉ cần gửi những thuộc tính cần thay đổi (hoặc tập lệnh thay đổi). |
| **Xử lý thiếu trường** | Các trường không có trong payload sẽ bị gán `null` hoặc giá trị mặc định. | Các trường không có trong payload sẽ được giữ nguyên giá trị cũ. |
| **Tính Idempotent** | Luôn luôn **Idempotent**. | **Không đảm bảo Idempotent** (về mặt kỹ thuật). |
| **Tiêu chuẩn RFC** | RFC 7231 (HTTP/1.1 Semantics) | RFC 5789 (PATCH Method for HTTP) |

---

### 2. Ví dụ thực tế

#### Ngữ cảnh: Cập nhật tài nguyên User
Giả sử chúng ta có thông tin user tại đường dẫn `/api/users/1` như sau:
```json
{
  "id": 1,
  "name": "John Doe",
  "email": "john@example.com",
  "status": "ACTIVE"
}
```

#### Ví dụ với PUT:
Chúng ta muốn cập nhật email thành `john.doe@example.com`. Vì PUT thay thế toàn bộ tài nguyên, chúng ta **bắt buộc** phải gửi lại tất cả các trường:
```http
PUT /api/users/1
Content-Type: application/json

{
  "name": "John Doe",
  "email": "john.doe@example.com",
  "status": "ACTIVE"
}
```
*Nếu chúng ta vô tình bỏ quên trường `"status"` khi gọi PUT, server có thể gán trường đó bằng `null` hoặc giá trị mặc định:*
```json
// Kết quả tài nguyên trên Server nếu gọi PUT thiếu trường status
{
  "id": 1,
  "name": "John Doe",
  "email": "john.doe@example.com",
  "status": null
}
```

#### Ví dụ với PATCH:
Chúng ta chỉ cần gửi trường email cần thay đổi:
```http
PATCH /api/users/1
Content-Type: application/json

{
  "email": "john.doe@example.com"
}
```
*Server sẽ tiến hành trộn (merge) trường này với dữ liệu hiện có, giữ nguyên các thuộc tính còn lại:*
```json
// Kết quả tài nguyên trên Server sau khi gọi PATCH
{
  "id": 1,
  "name": "John Doe",
  "email": "john.doe@example.com",
  "status": "ACTIVE"
}
```

---

### 3. Hiểu về tính Idempotent của PATCH
* **PUT là idempotent:** Gửi cùng một gói tin PUT 10 lần liên tiếp vẫn cho ra trạng thái tài nguyên giống như gửi 1 lần duy nhất.
* **PATCH không bắt buộc idempotent:** Mặc dù payload PATCH dạng `{"email": "john.doe@example.com"}` có tính idempotent, nhưng PATCH cũng hỗ trợ định dạng mô tả hành động (như JSON Patch - RFC 6902). Ví dụ:
  ```json
  [
    { "op": "add", "path": "/loginHistory", "value": "2026-07-14T00:54:20Z" }
  ]
  ```
  Nếu gọi request PATCH này 3 lần, server sẽ thêm 3 bản ghi vào lịch sử đăng nhập. Điều này làm thay đổi trạng thái qua mỗi lần gọi (không idempotent).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-94', 'REST', 'REST', 'Mid', 'What does it mean for an HTTP method to be idempotent?', 'Một phương thức HTTP được coi là idempotent (tính khả mục/bất biến) nghĩa là gì?', 'An HTTP method is **idempotent** if the side effects of making multiple identical requests are the same as making a single request. 

### 1. Mathematical Concept
If $f$ represents the API request operation and $x$ is the server state, then the operation is idempotent if:
$$f(f(x)) = f(x)$$
In other words, no matter how many times the same request is executed beyond the first time, the state of the resource on the server remains identical to the state after the first execution.

### 2. Key Clarifications
* **Server State vs. Server Response:** Idempotency refers only to the **state of the resource on the server**, not the response status code or body returned to the client.
  * *Example:* A `DELETE` request for a resource might return `204 No Content` on the first call, and `404 Not Found` on subsequent calls. However, the server state remains unchanged (the resource remains deleted). Thus, `DELETE` is idempotent.
* **Logs and Statistics do not break Idempotency:** Side-effects that do not change the resource state (e.g., updating access logs, incrementing a page hit counter, or executing database metrics) are ignored when evaluating idempotency.

### 3. Why Idempotency Matters in API Design
* **Network Reliability and Retries:** In distributed systems, requests can fail due to network timeouts. If a client sends a request and the connection drops before receiving the response, the client doesn''t know if the server processed the request.
* **Safe Re-transmission:** If the method is **idempotent** (like GET, PUT, or DELETE), the client or API Gateway can safely retry the request automatically. If it is **non-idempotent** (like POST), automatic retries could lead to duplicate records (e.g., charging a credit card twice).', 'Một phương thức HTTP được coi là **idempotent** (tính khả mục/bất biến) nếu các tác động phụ (side effects) của việc thực hiện nhiều yêu cầu giống hệt nhau lên hệ thống là như nhau so với chỉ thực hiện một yêu cầu duy nhất.

### 1. Khái niệm Toán học
Nếu ký hiệu $f$ là hành động gửi request và $x$ là trạng thái của server, thì phương thức được coi là idempotent khi:
$$f(f(x)) = f(x)$$
Nói cách khác, dù bạn có gửi đi gửi lại cùng một yêu cầu bao nhiêu lần đi chăng nữa (từ lần thứ hai trở đi), trạng thái của tài nguyên trên server vẫn hoàn toàn giống với trạng thái sau lần gọi đầu tiên.

### 2. Các điểm cần làm rõ
* **Trạng thái Server vs. Phản hồi trả về:** Tính idempotent chỉ áp dụng đối với **trạng thái dữ liệu trên server**, chứ không bắt buộc phản hồi (response status code hay response body) trả về cho client ở các lần gọi phải giống hệt nhau.
  * *Ví dụ:* Một request `DELETE /api/users/1` lần đầu tiên sẽ xóa user và trả về `204 No Content`. Lần thứ hai gọi lại, user đã bị xóa nên server trả về `404 Not Found`. Mặc dù mã HTTP khác nhau, nhưng trạng thái hệ thống không đổi (user vẫn ở trạng thái đã xóa). Vì vậy, `DELETE` là idempotent.
* **Ghi log và chỉ số thống kê không làm mất tính Idempotent:** Các tác động phụ gián tiếp không thay đổi tài nguyên chính (ví dụ: ghi log truy cập, tăng bộ đếm lượt xem, cập nhật thống kê) sẽ không được tính là làm mất tính idempotent.

### 3. Ý nghĩa của Idempotency trong thiết kế API
* **Độ tin cậy của mạng lưới và cơ chế Retry:** Trong hệ thống phân tán, các yêu cầu có thể thất bại do timeout đường truyền. Client gửi đi nhưng bị mất kết nối trước khi nhận phản hồi, dẫn đến việc không biết server đã xử lý request đó hay chưa.
* **Tự động gửi lại an toàn:** Nếu phương thức là **idempotent** (như GET, PUT, DELETE), client hoặc API Gateway có thể tự động gửi lại request một cách an toàn. Ngược lại, nếu là **non-idempotent** (như POST), việc tự động gửi lại có thể gây lỗi trùng lặp dữ liệu (ví dụ: thanh toán hóa đơn hai lần).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-95', 'REST', 'REST', 'Junior', 'Which HTTP methods are idempotent?', 'Những phương thức HTTP nào là idempotent?', 'HTTP methods are categorized as either **idempotent** or **non-idempotent** according to the HTTP/1.1 specification (RFC 7231).

### 1. List of Idempotent HTTP Methods

* **GET:** Used to retrieve data. It is a **safe** and **idempotent** method. Reading a resource multiple times does not change its state.
* **PUT:** Used to replace a resource. Updating a resource with the exact same payload multiple times yields the same final state.
* **DELETE:** Used to delete a resource. Once deleted, the resource is gone. Multiple deletions of the same resource do not change the server state further.
* **HEAD:** Similar to GET, but only retrieves the response headers. It is safe and idempotent.
* **OPTIONS:** Used to describe the communication options for the target resource. It is safe and idempotent.

---

### 2. List of Non-Idempotent HTTP Methods

* **POST:** Used to create new resources. Submitting the same POST request multiple times will result in multiple new resources being created (e.g., creating duplicate orders).
* **PATCH:** Used to make partial updates. While some PATCH implementations are idempotent (e.g., setting a field to a specific value), the PATCH specification (RFC 5789) does not guarantee idempotency. For example, if a PATCH body contains instructions to increment a balance or append an item to an array, executing it multiple times results in different server states.

---

### 3. Summary Table

| HTTP Method | Safe (No state change) | Idempotent (Multiple calls = Single call state change) |
| :--- | :---: | :---: |
| **GET** | **Yes** | **Yes** |
| **HEAD** | **Yes** | **Yes** |
| **OPTIONS** | **Yes** | **Yes** |
| **PUT** | No | **Yes** |
| **DELETE** | No | **Yes** |
| **POST** | No | No |
| **PATCH** | No | No (usually) |', 'Các phương thức HTTP được phân loại thành nhóm **idempotent** hoặc **non-idempotent** theo đặc tả HTTP/1.1 (RFC 7231).

### 1. Các phương thức HTTP có tính Idempotent

* **GET:** Dùng để lấy dữ liệu. Đây là phương thức vừa **an toàn (safe)** vừa **idempotent**. Việc đọc thông tin một tài nguyên nhiều lần hoàn toàn không làm thay đổi trạng thái của tài nguyên đó.
* **PUT:** Dùng để thay thế tài nguyên. Việc ghi đè một tài nguyên bằng cùng một gói tin nhiều lần liên tiếp sẽ luôn cho ra một trạng thái tài nguyên duy nhất ở lần cuối.
* **DELETE:** Dùng để xóa tài nguyên. Sau khi đã xóa ở lần gọi đầu tiên, tài nguyên đó không còn nữa. Các lần gọi xóa tiếp theo không làm thay đổi thêm trạng thái hệ thống.
* **HEAD:** Tương tự như GET nhưng chỉ lấy về các headers của phản hồi chứ không lấy phần body. Nó an toàn và idempotent.
* **OPTIONS:** Sử dụng để thăm dò các tùy chọn cấu hình giao tiếp được hỗ trợ cho tài nguyên. Nó an toàn và idempotent.

---

### 2. Các phương thức HTTP KHÔNG có tính Idempotent

* **POST:** Dùng để tạo mới tài nguyên. Việc gửi cùng một request POST nhiều lần sẽ tạo ra nhiều bản ghi mới trên database (ví dụ: tạo nhiều đơn hàng trùng lặp).
* **PATCH:** Dùng để cập nhật một phần dữ liệu. Mặc dù một số triển khai PATCH có tính idempotent (như thay đổi giá trị một thuộc tính cụ thể), nhưng đặc tả PATCH (RFC 5789) không đảm bảo tính idempotent. Ví dụ, nếu body của PATCH chứa thao tác cộng tiền vào tài khoản hay thêm phần tử vào mảng, gọi nhiều lần sẽ dẫn tới cộng tiền nhiều lần.

---

### 3. Bảng tổng hợp

| HTTP Method | Safe (An toàn - Không đổi trạng thái) | Idempotent (Gọi nhiều lần = Gọi 1 lần) |
| :--- | :---: | :---: |
| **GET** | **Có** | **Có** |
| **HEAD** | **Có** | **Có** |
| **OPTIONS** | **Có** | **Có** |
| **PUT** | Không | **Có** |
| **DELETE** | Không | **Có** |
| **POST** | Không | Không |
| **PATCH** | Không | Không (thường gặp) |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-96', 'REST', 'REST', 'Junior', 'What is the difference between path parameters and query parameters?', 'Sự khác biệt giữa path parameter (tham số đường dẫn) và query parameter (tham số truy vấn) là gì?', 'Both path parameters and query parameters are used to pass information to the server via the URI, but they serve different purposes and are used in different scenarios.

### 1. Comparative Analysis

| Feature | Path Parameter | Query Parameter |
| :--- | :--- | :--- |
| **Definition** | Embedded directly into the URL path. | Appended to the end of the URL after a `?`. |
| **Syntax** | `/users/{id}` (e.g., `/users/42`) | `/users?key=val` (e.g., `/users?role=admin`) |
| **Primary Purpose** | To identify a **specific resource** or define hierarchies. | To **filter, sort, search, or paginate** resources. |
| **Requirement** | Usually **mandatory** to locate the resource. | Usually **optional** (has default fallback behavior). |
| **Spring Annotation**| `@PathVariable` | `@RequestParam` |

---

### 2. Deep Dive and Examples

#### Path Parameters
* Path parameters are used to uniquely identify a resource. They indicate a parent-child relationship or hierarchical path.
* *Example:* `GET /api/v1/departments/engineering/employees/123`
  * Here, `engineering` and `123` are path parameters pointing directly to employee `123` in the `engineering` department.
* **Spring Boot Controller Example:**
  ```java
  @GetMapping("/users/{userId}")
  public ResponseEntity<UserDto> getUserById(@PathVariable("userId") Long id) {
      return ResponseEntity.ok(userService.findById(id));
  }
  ```

#### Query Parameters
* Query parameters are used to filter, sort, paginate, or customize the representation of the collection of resources. They are optional parameters that do not alter the identity of the resource path itself.
* *Example:* `GET /api/v1/employees?department=engineering&sort=name,asc&page=0&size=10`
  * Here, the resource identifier is `/employees`, and the query parameters filter for those in `engineering`, sort them by name, and fetch the first page of size 10.
* **Spring Boot Controller Example:**
  ```java
  @GetMapping("/users")
  public ResponseEntity<Page<UserDto>> getUsers(
          @RequestParam(value = "role", required = false) String role,
          @RequestParam(value = "page", defaultValue = "0") int page,
          @RequestParam(value = "size", defaultValue = "20") int size) {
      return ResponseEntity.ok(userService.findAll(role, PageRequest.of(page, size)));
  }
  ```

### 3. API Design Best Practices
* Use **Path Parameters** for mandatory identifiers needed to locate a resource.
* Use **Query Parameters** for optional filtering, sorting, pagination, search queries, or parameters that do not change the core endpoint structure.', 'Cả path parameters (tham số đường dẫn) và query parameters (tham số truy vấn) đều được sử dụng để truyền dữ liệu từ client lên server thông qua URI, nhưng chúng có mục đích sử dụng và ý nghĩa thiết kế khác nhau.

### 1. Bảng so sánh chi tiết

| Đặc điểm | Path Parameter | Query Parameter |
| :--- | :--- | :--- |
| **Định nghĩa** | Nằm trực tiếp trong cấu trúc đường dẫn URL. | Nằm ở cuối đường dẫn, bắt đầu sau dấu chấm hỏi `?`. |
| **Cú pháp** | `/users/{id}` (ví dụ: `/users/42`) | `/users?key=val` (ví dụ: `/users?role=admin`) |
| **Mục đích chính** | Dùng để định danh một **tài nguyên cụ thể** hoặc phân cấp. | Dùng để **lọc, sắp xếp, tìm kiếm, phân trang** danh sách tài nguyên. |
| **Tính bắt buộc** | Thường là **bắt buộc** để xác định đường dẫn. | Thường là **tùy chọn** (có giá trị mặc định nếu thiếu). |
| **Annotation (Spring)**| `@PathVariable` | `@RequestParam` |

---

### 2. Chi tiết và ví dụ minh họa

#### Path Parameters
* Path parameters được dùng khi bạn muốn định danh chính xác một tài nguyên, thể hiện mối quan hệ cha - con hoặc cấu trúc phân cấp.
* *Ví dụ:* `GET /api/v1/departments/engineering/employees/123`
  * Ở đây, `engineering` và `123` là các path parameters, dùng để xác định nhân viên mang mã số `123` thuộc phòng ban `engineering`.
* **Ví dụ code Spring Boot:**
  ```java
  @GetMapping("/users/{userId}")
  public ResponseEntity<UserDto> getUserById(@PathVariable("userId") Long id) {
      return ResponseEntity.ok(userService.findById(id));
  }
  ```

#### Query Parameters
* Query parameters dùng để tùy chỉnh kết quả trả về của một tập hợp tài nguyên mà không làm thay đổi định danh của tài nguyên đó (lọc dữ liệu, sắp xếp, phân trang).
* *Ví dụ:* `GET /api/v1/employees?department=engineering&sort=name,asc&page=0&size=10`
  * Ở đây, tài nguyên gốc vẫn là danh sách nhân viên `/employees`. Các tham số phía sau dấu `?` được dùng để lọc nhân viên phòng `engineering`, sắp xếp tăng dần theo tên, và phân trang.
* **Ví dụ code Spring Boot:**
  ```java
  @GetMapping("/users")
  public ResponseEntity<Page<UserDto>> getUsers(
          @RequestParam(value = "role", required = false) String role,
          @RequestParam(value = "page", defaultValue = "0") int page,
          @RequestParam(value = "size", defaultValue = "20") int size) {
      return ResponseEntity.ok(userService.findAll(role, PageRequest.of(page, size)));
  }
  ```

### 3. Quy tắc thiết kế chuẩn RESTful
* Sử dụng **Path Parameters** cho các tham số định danh bắt buộc để tìm ra đối tượng cụ thể.
* Sử dụng **Query Parameters** cho các tham số tùy chọn dùng để lọc, tìm kiếm nâng cao, sắp xếp hoặc phân trang dữ liệu.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-97', 'REST', 'REST', 'Junior', 'What are common HTTP status codes used in REST APIs?', 'Các mã trạng thái HTTP (status codes) phổ biến thường dùng trong REST API là gì?', 'HTTP status codes are returned by the server to inform the client of the outcome of their request. They are divided into five classes, with three classes being primary in REST API responses: Success (2xx), Client Error (4xx), and Server Error (5xx).

### 1. 2xx Success (Request successfully received, understood, and accepted)
* **200 OK:** Standard response for successful HTTP requests (GET, PUT, PATCH).
* **201 Created:** Request succeeded and a new resource was created (commonly returned by POST).
* **204 No Content:** Request succeeded, but the server does not return any content in the response body (commonly returned by DELETE or PUT/PATCH when response body is not needed).

### 2. 3xx Redirection (Further action needs to be taken by user agent)
* **304 Not Modified:** The resource has not changed since the last request. Used for client-side caching (conditional GET via headers like `If-None-Match`).

### 3. 4xx Client Errors (The request contains bad syntax or cannot be fulfilled)
* **400 Bad Request:** The request payload is invalid or malformed (validation errors, invalid JSON).
* **401 Unauthorized:** Authentication credentials are missing or invalid.
* **403 Forbidden:** The client is authenticated but does not have the required permissions to access the resource.
* **404 Not Found:** The requested resource could not be found on the server.
* **405 Method Not Allowed:** The HTTP method is not supported for the requested URL (e.g., attempting a POST on a read-only endpoint).
* **409 Conflict:** The request conflicts with the current state of the server (e.g., trying to register a user with an email address that already exists).
* **415 Unsupported Media Type:** The server does not support the format of the request body (e.g., client sends XML, but server accepts only JSON).

### 4. 5xx Server Errors (The server failed to fulfill an apparently valid request)
* **500 Internal Server Error:** A generic error message when an unexpected condition occurred on the server (unhandled exceptions).
* **502 Bad Gateway:** The server, acting as a gateway or proxy, received an invalid response from the upstream server.
* **503 Service Unavailable:** The server is currently unable to handle the request (due to temporary overloading or maintenance).
* **504 Gateway Timeout:** The gateway server timed out waiting for a response from the upstream application server.', 'Mã trạng thái HTTP (HTTP status codes) được server trả về nhằm thông báo kết quả thực hiện request cho client. Chúng được chia làm 5 nhóm, trong đó 3 nhóm phổ biến nhất trong thiết kế REST API là: Thành công (2xx), Lỗi phía Client (4xx), và Lỗi phía Server (5xx).

### 1. Nhóm 2xx - Thành công (Thao tác xử lý thành công)
* **200 OK:** Phản hồi chuẩn cho các request thành công (thường dùng cho GET, PUT, PATCH).
* **201 Created:** Request thành công và một tài nguyên mới đã được tạo ra (thường dùng cho POST).
* **204 No Content:** Thao tác thành công nhưng server không trả về bất kỳ nội dung nào trong body (thường dùng cho DELETE hoặc cập nhật mà không cần trả dữ liệu).

### 2. Nhóm 3xx - Điều hướng (Client cần thực hiện thêm thao tác)
* **304 Not Modified:** Tài nguyên không đổi kể từ lần request trước đó. Được dùng để tối ưu bộ nhớ đệm (caching) phía client.

### 3. Nhóm 4xx - Lỗi Client (Lỗi do định dạng hoặc nội dung request không hợp lệ)
* **400 Bad Request:** Cú pháp request không hợp lệ hoặc dữ liệu gửi lên bị lỗi (lỗi validate dữ liệu, sai JSON syntax).
* **401 Unauthorized:** Chưa xác thực hoặc thông tin xác thực (token, credentials) không hợp lệ.
* **403 Forbidden:** Client đã xác thực thành công nhưng không có quyền truy cập vào tài nguyên yêu cầu (lỗi phân quyền).
* **404 Not Found:** Không tìm thấy tài nguyên ứng với URI yêu cầu trên hệ thống.
* **405 Method Not Allowed:** Phương thức HTTP được gửi lên không được hỗ trợ đối với endpoint này (ví dụ: gửi POST vào một URL chỉ cho phép GET).
* **409 Conflict:** Xảy ra xung đột với trạng thái hiện tại của tài nguyên (ví dụ: đăng ký tài khoản với email đã được sử dụng).
* **415 Unsupported Media Type:** Server không hỗ trợ định dạng dữ liệu gửi lên (ví dụ: client gửi lên XML trong khi server chỉ nhận JSON).

### 4. Nhóm 5xx - Lỗi Server (Lỗi xuất phát từ phía máy chủ)
* **500 Internal Server Error:** Lỗi chung khi hệ thống gặp sự cố không mong muốn (ngoại lệ chưa được bắt - unhandled exceptions).
* **502 Bad Gateway:** Máy chủ trung gian (như Nginx, API Gateway) nhận phản hồi lỗi từ máy chủ ứng dụng phía sau.
* **503 Service Unavailable:** Máy chủ hiện không thể xử lý request (do đang quá tải hoặc bảo trì định kỳ).
* **504 Gateway Timeout:** Máy chủ Gateway bị hết hạn thời gian chờ (timeout) phản hồi từ máy chủ ứng dụng phía sau.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-98', 'REST', 'REST', 'Mid', 'When should 200, 201, 204, 400, 401, 403, 404, and 500 be used?', 'Khi nào nên sử dụng các mã trạng thái 200, 201, 204, 400, 401, 403, 404, và 500?', 'Using correct HTTP status codes makes an API self-descriptive and standardizes communication between client and server. Here is when to use each of these critical status codes:

### 1. Success Codes (2xx)

* **`200 OK`**
  * **When to use:** For any successful request that returns a response body (except resource creation).
  * **Scenarios:** `GET` returns resource data, `PUT` or `PATCH` updates a resource and returns the updated entity, `POST` processes a non-create action (e.g., executing a search or login process).
* **`201 Created`**
  * **When to use:** When a new resource is successfully created.
  * **Scenarios:** A `POST` request creates a new database entry. The response should include the created object in the body and a `Location` header pointing to the URI of the new resource.
* **`204 No Content`**
  * **When to use:** When a request is successful, but there is no payload to return.
  * **Scenarios:** A `DELETE` request completes successfully, or a `PUT`/`PATCH` request updates a resource but the client does not require the updated state in the response.

---

### 2. Client Error Codes (4xx)

* **`400 Bad Request`**
  * **When to use:** When the server cannot process the request due to client-side issues.
  * **Scenarios:** Request body has malformed JSON, mandatory fields are missing, or business validation rules fail (e.g., password too short).
* **`401 Unauthorized`**
  * **When to use:** When the client lacks authentication credentials or credentials are invalid.
  * **Scenarios:** Missing `Authorization` header, expired JWT token, or incorrect API key.
* **`403 Forbidden`**
  * **When to use:** When the client is authenticated but lacks the permission to perform the requested operation.
  * **Scenarios:** A regular user attempts to access admin-only endpoints (`GET /admin/users`), or a user tries to modify resources owned by another user.
* **`404 Not Found`**
  * **When to use:** When the target resource does not exist.
  * **Scenarios:** The client requests a user with ID `9999` which doesn''t exist, or hits an invalid URI pattern.

---

### 3. Server Error Codes (5xx)

* **`500 Internal Server Error`**
  * **When to use:** When an unexpected error occurs on the server side that prevents it from fulfilling the request.
  * **Scenarios:** NullPointerExceptions, database connection failures, database transaction rollbacks, or system configuration bugs.

---

### 4. Spring Boot Controller Examples
```java
@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    @Autowired
    private UserService userService;

    // 200 OK
    @GetMapping("/{id}")
    public ResponseEntity<UserDto> getUser(@PathVariable Long id) {
        UserDto user = userService.findById(id); // Throws UserNotFoundException (handled by advice -> 404)
        return ResponseEntity.ok(user);
    }

    // 201 Created
    @PostMapping
    public ResponseEntity<UserDto> createUser(@Valid @RequestBody UserDto dto) {
        UserDto created = userService.create(dto);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}").buildAndExpand(created.getId()).toUri();
        return ResponseEntity.created(location).body(created);
    }

    // 204 No Content
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteUser(@PathVariable Long id) {
        userService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
```', 'Sử dụng đúng mã trạng thái HTTP giúp API trở nên tự mô tả (self-descriptive) và chuẩn hóa quá trình giao tiếp giữa client và server. Dưới đây là hướng dẫn chi tiết về các tình huống cụ thể nên áp dụng các mã trạng thái này:

### 1. Các mã trạng thái thành công (2xx)

* **`200 OK`**
  * **Khi nào sử dụng:** Khi request thành công và server cần trả về dữ liệu (body) cho client.
  * **Ngữ cảnh:** Gọi `GET` lấy dữ liệu thành công; gọi `PUT`/`PATCH` cập nhật dữ liệu thành công và trả về dữ liệu mới; gọi `POST` thực hiện các tính năng không tạo tài nguyên (ví dụ: login, search).
* **`201 Created`**
  * **Khi nào sử dụng:** Khi một tài nguyên mới được tạo lập thành công.
  * **Ngữ cảnh:** Gọi request `POST` để chèn mới dữ liệu vào database. Phản hồi nên chứa thực thể vừa tạo ở body và kèm theo một header `Location` trỏ đến đường dẫn của tài nguyên mới.
* **`204 No Content`**
  * **Khi nào sử dụng:** Khi request thành công nhưng server không cần trả lại bất kỳ nội dung nào trong body.
  * **Ngữ cảnh:** Thường dùng cho request `DELETE` (xóa thành công thì không cần trả dữ liệu cũ), hoặc khi gửi `PUT`/`PATCH` mà client chỉ cần biết là cập nhật thành công chứ không cần nhận lại thực thể đã cập nhật.

---

### 2. Các mã lỗi phía Client (4xx)

* **`400 Bad Request`**
  * **Khi nào sử dụng:** Khi server không thể hoặc sẽ không xử lý request do lỗi từ phía client.
  * **Ngữ cảnh:** Gửi sai định dạng JSON, thiếu các tham số bắt buộc trong body/query, hoặc dữ liệu không thỏa mãn các điều kiện ràng buộc nghiệp vụ (validation failures - ví dụ: mật khẩu quá ngắn).
* **`401 Unauthorized`**
  * **Khi nào sử dụng:** Khi request thiếu thông tin xác thực hoặc thông tin xác thực cung cấp không hợp lệ.
  * **Ngữ cảnh:** Thiếu header `Authorization`, JWT token đã hết hạn, hoặc nhập sai API key.
* **`403 Forbidden`**
  * **Khi nào sử dụng:** Khi client đã đăng nhập (xác thực thành công) nhưng không có đủ quyền hạn để thực hiện thao tác đó.
  * **Ngữ cảnh:** Một tài khoản người dùng thường cố gắng truy cập endpoint dành cho admin (`GET /admin/users`), hoặc một người dùng cố truy cập/chỉnh sửa thông tin thuộc về người dùng khác.
* **`404 Not Found`**
  * **Khi nào sử dụng:** Khi tài nguyên được yêu cầu không tồn tại trên hệ thống.
  * **Ngữ cảnh:** Client truy vấn user có ID `9999` không tồn tại trong database, hoặc truy cập sai địa chỉ URL của endpoint.

---

### 3. Các mã lỗi phía Server (5xx)

* **`500 Internal Server Error`**
  * **Khi nào sử dụng:** Khi máy chủ gặp lỗi hệ thống hoặc ngoại lệ không lường trước được, khiến nó không thể hoàn thành request.
  * **Ngữ cảnh:** Lỗi `NullPointerException`, lỗi kết nối database, lỗi đồng bộ luồng, hoặc các lỗi logic nghiệp vụ chưa được xử lý trong code.

---

### 4. Ví dụ code triển khai trong Spring Boot Controller
```java
@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    @Autowired
    private UserService userService;

    // Trả về 200 OK kèm body
    @GetMapping("/{id}")
    public ResponseEntity<UserDto> getUser(@PathVariable Long id) {
        UserDto user = userService.findById(id); // Nếu không tìm thấy, ném UserNotFoundException -> trả về 404 qua Exception Handler
        return ResponseEntity.ok(user);
    }

    // Trả về 201 Created kèm header Location
    @PostMapping
    public ResponseEntity<UserDto> createUser(@Valid @RequestBody UserDto dto) {
        UserDto created = userService.create(dto);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}").buildAndExpand(created.getId()).toUri();
        return ResponseEntity.created(location).body(created);
    }

    // Trả về 204 No Content
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteUser(@PathVariable Long id) {
        userService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-99', 'REST', 'REST', 'Mid', 'What is content negotiation?', 'Content negotiation (thương lượng nội dung) là gì?', '**Content Negotiation** is the mechanism defined in the HTTP specification that allows a client and a server to agree on the best representation format (e.g., JSON, XML, HTML, or PDF) and settings (language, encoding) for a given resource.

### 1. How Content Negotiation Works
There are two main approaches to content negotiation:

#### A. Server-Driven Content Negotiation (Implicit)
This is the most common approach used in REST APIs. The client sends request headers indicating its preferences, and the server decides which format to return.
* **`Accept`:** Specifies the preferred media types (e.g., `Accept: application/json, application/xml;q=0.9`). The `q` parameter indicates the relative preference (quality factor).
* **`Accept-Language`:** Specifies the preferred language (e.g., `Accept-Language: en-US, vi;q=0.5`).
* **`Accept-Encoding`:** Specifies the preferred compression algorithms (e.g., `Accept-Encoding: gzip, deflate`).
* **`Accept-Charset`:** Specifies the character set (e.g., `Accept-Charset: utf-8`).

#### B. Agent-Driven Content Negotiation (Explicit)
The server returns a list of available representations (often with a `300 Multiple Choices` status), and the client explicitly chooses one. This is rarely used in modern REST APIs because it adds a round-trip delay.

---

### 2. Implementation in Spring Boot / Spring MVC
Spring MVC handles content negotiation automatically through **`HttpMessageConverter`** beans. 
* By default, if the client requests `Accept: application/json` (or if no header is present), Spring uses Jackson (`MappingJackson2HttpMessageConverter`) to serialize objects to JSON.
* If the client requests `Accept: application/xml`, and a JAXB converter (or Jackson XML dependency) is on the classpath, Spring returns XML.

#### Customizing Content Negotiation in Spring Boot
You can customize this behavior by implementing `WebMvcConfigurer` to support format parameters or path extensions:

```java
@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        configurer
            // 1. Favor query parameter (e.g., /api/users?mediaType=xml)
            .favorParameter(true)
            .parameterName("mediaType")
            // 2. Ignore Accept header if format parameter is present
            .ignoreAcceptHeader(false)
            // 3. Define mapping media types
            .defaultContentType(MediaType.APPLICATION_JSON)
            .mediaType("json", MediaType.APPLICATION_JSON)
            .mediaType("xml", MediaType.APPLICATION_XML);
    }
}
```

#### Triggering in Spring Controllers
You can also explicitly define which media types a controller method produces or consumes:
```java
@RestController
@RequestMapping("/api/users")
public class UserController {

    // This method handles JSON and XML based on ''Accept'' header or query param
    @GetMapping(value = "/{id}", produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
    public User getUser(@PathVariable Long id) {
        return new User(id, "John Doe");
    }
}
```', '**Content Negotiation** (Thương lượng nội dung) là cơ chế được định nghĩa trong giao thức HTTP cho phép client và server thỏa thuận để chọn định dạng biểu diễn dữ liệu (representation format - như JSON, XML, HTML, PDF) và các cấu hình liên quan (ngôn ngữ, bảng mã) phù hợp nhất cho một tài nguyên.

### 1. Cơ chế hoạt động của Content Negotiation
Có hai cách tiếp cận chính đối với việc thương lượng nội dung:

#### A. Thương lượng nội dung do Server điều khiển (Server-Driven - Ngầm định)
Đây là cách tiếp cận phổ biến nhất trong các REST API hiện đại. Client gửi các thông tin ưu tiên trong phần header của request, và server sẽ tự chọn định dạng tốt nhất để trả về.
* **`Accept`:** Cho biết định dạng dữ liệu mong muốn nhận lại (ví dụ: `Accept: application/json, application/xml;q=0.9`). Chỉ số `q` là trọng số ưu tiên (quality factor).
* **`Accept-Language`:** Cho biết ngôn ngữ mong muốn (ví dụ: `Accept-Language: vi, en-US;q=0.8`).
* **`Accept-Encoding`:** Chỉ định giải thuật nén dữ liệu mong muốn (ví dụ: `Accept-Encoding: gzip, deflate`).
* **`Accept-Charset`:** Chỉ định bảng mã ký tự (ví dụ: `Accept-Charset: utf-8`).

#### B. Thương lượng nội dung do Agent điều khiển (Agent-Driven - Tường minh)
Server trả về danh sách các định dạng hiện có (thường đi kèm mã trạng thái `300 Multiple Choices`), sau đó client tự chọn một định dạng và gửi request lại. Cách này ít được dùng vì gây ra độ trễ do tăng số lần kết nối.

---

### 2. Triển khai trong Spring Boot / Spring MVC
Spring MVC hỗ trợ cơ chế thương lượng nội dung một cách tự động nhờ các **`HttpMessageConverter`**:
* Theo mặc định, nếu client yêu cầu `Accept: application/json` (hoặc không truyền gì), Spring sẽ dùng thư viện Jackson (`MappingJackson2HttpMessageConverter`) để tuần tự hóa (serialize) đối tượng thành JSON.
* Nếu client yêu cầu `Accept: application/xml` và dự án có cài đặt Jackson XML hoặc JAXB trong classpath, Spring sẽ tự động chuyển đổi dữ liệu thành định dạng XML.

#### Tùy biến cấu hình Content Negotiation trong Spring Boot
Bạn có thể cấu hình chi tiết hành vi thương lượng nội dung thông qua interface `WebMvcConfigurer`:

```java
@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        configurer
            // 1. Cho phép dùng tham số trên URL (ví dụ: /api/users?mediaType=xml)
            .favorParameter(true)
            .parameterName("mediaType")
            // 2. Không bỏ qua Accept header
            .ignoreAcceptHeader(false)
            // 3. Thiết lập định dạng mặc định và định dạng hỗ trợ
            .defaultContentType(MediaType.APPLICATION_JSON)
            .mediaType("json", MediaType.APPLICATION_JSON)
            .mediaType("xml", MediaType.APPLICATION_XML);
    }
}
```

#### Sử dụng trực tiếp trong Spring Controllers
Bạn cũng có thể chỉ định chính xác loại dữ liệu mà một endpoint chấp nhận hoặc trả về:
```java
@RestController
@RequestMapping("/api/users")
public class UserController {

    // Phương thức này có thể trả về cả JSON lẫn XML dựa trên Accept header hoặc query param
    @GetMapping(value = "/{id}", produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
    public User getUser(@PathVariable Long id) {
        return new User(id, "John Doe");
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-100', 'REST', 'REST', 'Mid', 'What is API versioning?', 'Versioning API (đánh số phiên bản API) là gì?', '**API Versioning** is the practice of managing changes to an API in a way that prevents existing clients from breaking when backward-incompatible (breaking) changes are introduced.

### Why is API Versioning Important?
As business requirements evolve, the API structure changes (e.g., renaming fields, changing data types, or deleting endpoints). Versioning allows developers to roll out new features and structures under a new version while keeping older versions active for clients that are not yet ready to upgrade.

---

### Common Strategies for API Versioning

#### 1. URI Versioning (Path Versioning)
The version is embedded directly in the URL path.
*   **Example**: `https://api.example.com/v1/users` or `https://api.example.com/v2/users`
*   **Pros**:
    *   Highly visible and easy to read.
    *   Easy to route using web servers (like Nginx) or API Gateways.
    *   Easy to test in a browser.
*   **Cons**:
    *   Violates the URI design principle that a URI should represent a unique resource, not its state or version.
    *   Requires path updates in client configurations when transitioning to a new version.

#### 2. Query Parameter Versioning
The version is specified as a query parameter in the URL.
*   **Example**: `https://api.example.com/users?version=2`
*   **Pros**:
    *   Keeps the base URI clean.
    *   Easy to implement and set a default version if none is specified.
*   **Cons**:
    *   Query parameters can be stripped by intermediaries or cached incorrectly.
    *   Makes routing logic in routers/controllers slightly more complex.

#### 3. Custom Header Versioning
Clients specify the version using a custom HTTP header.
*   **Example**:
    ```http
    GET /users HTTP/1.1
    Host: api.example.com
    X-API-Version: 2
    ```
*   **Pros**:
    *   Clean URIs.
    *   Decouples the versioning metadata from the resource identifier.
*   **Cons**:
    *   Requires clients to configure custom headers.
    *   Cannot be easily tested via a standard web browser address bar.

#### 4. Media Type / Accept Header Versioning (Content Negotiation)
Clients specify the desired version inside the standard `Accept` header, requesting a custom media type.
*   **Example**:
    ```http
    GET /users HTTP/1.1
    Host: api.example.com
    Accept: application/vnd.example.v2+json
    ```
*   **Pros**:
    *   Strict adherence to REST principles (HATEOAS and content negotiation).
    *   Clean URIs.
*   **Cons**:
    *   Harder for clients to configure and debug.
    *   Requires robust content negotiation implementation on the server.

---

### Best Practices for API Versioning in Production
1.  **Define a Clear Deprecation Policy**: Inform consumers about how long older versions will be supported and send deprecation warnings (e.g., using `Sunset` and `Deprecation` HTTP headers).
2.  **Avoid Versioning for Non-Breaking Changes**: Adding new fields or endpoints is backward-compatible; do not increment version numbers for these additions.
3.  **Choose One Standard and Be Consistent**: Don''t mix URI versioning and header versioning within the same API gateway suite.', '**API Versioning (Đánh số phiên bản API)** là giải pháp quản lý các thay đổi của API để tránh làm gián đoạn (gây lỗi/breaking changes) các ứng dụng client hiện tại khi có các bản cập nhật không tương thích ngược.

### Tại sao API Versioning lại quan trọng?
Khi yêu cầu nghiệp vụ thay đổi, cấu trúc API cũng thay đổi (ví dụ: đổi tên trường, đổi kiểu dữ liệu, xóa endpoint). Versioning cho phép nhà phát triển triển khai cấu trúc mới ở phiên bản tiếp theo trong khi vẫn duy trì phiên bản cũ hoạt động bình thường cho các client chưa kịp nâng cấp.

---

### Các chiến lược API Versioning phổ biến

#### 1. URI Versioning (Định tuyến theo đường dẫn)
Phiên bản được nhúng trực tiếp vào đường dẫn URL.
*   **Ví dụ**: `https://api.example.com/v1/users` hoặc `https://api.example.com/v2/users`
*   **Ưu điểm**:
    *   Rõ ràng, trực quan, dễ đọc.
    *   Dễ định tuyến ở tầng web server (như Nginx) hoặc API Gateway.
    *   Có thể kiểm tra trực tiếp trên trình duyệt.
*   **Nhược điểm**:
    *   Vi phạm nguyên tắc thiết kế RESTful (một URI đại diện cho một tài nguyên duy nhất, không phải trạng thái hay phiên bản của nó).
    *   Yêu cầu client phải thay đổi cấu hình URL khi nâng cấp phiên bản.

#### 2. Query Parameter Versioning (Tham số truy vấn)
Phiên bản được truyền đi dưới dạng một tham số trên URL.
*   **Ví dụ**: `https://api.example.com/users?version=2`
*   **Ưu điểm**:
    *   Giữ URI gốc sạch sẽ.
    *   Dễ triển khai và dễ cài đặt phiên bản mặc định nếu client không truyền tham số.
*   **Nhược điểm**:
    *   Các tham số truy vấn có thể bị lọc bỏ bởi proxy hoặc cache không chính xác.
    *   Logic định tuyến ở tầng controller phức tạp hơn một chút.

#### 3. Custom Header Versioning (Header tùy chỉnh)
Client gửi thông tin phiên bản qua một HTTP Header tự định nghĩa.
*   **Ví dụ**:
    ```http
    GET /users HTTP/1.1
    Host: api.example.com
    X-API-Version: 2
    ```
*   **Ưu điểm**:
    *   URI được giữ nguyên và sạch sẽ.
    *   Tách biệt metadata phiên bản ra khỏi định danh tài nguyên.
*   **Nhược điểm**:
    *   Yêu cầu client phải cấu hình thêm header khi gửi request.
    *   Không thể test nhanh qua thanh địa chỉ trình duyệt.

#### 4. Media Type / Accept Header Versioning (Thương lượng nội dung - Content Negotiation)
Client gửi yêu cầu phiên bản thông qua standard header `Accept` với một media type tùy chỉnh.
*   **Ví dụ**:
    ```http
    GET /users HTTP/1.1
    Host: api.example.com
    Accept: application/vnd.example.v2+json
    ```
*   **Ưu điểm**:
    *   Tuân thủ nghiêm ngặt nguyên tắc REST (HATEOAS và content negotiation).
    *   URI sạch sẽ và phản ánh đúng tài nguyên.
*   **Nhược điểm**:
    *   Phức tạp cho client khi cấu hình và debug.
    *   Yêu cầu phía server phải xử lý content negotiation tốt.

---

### Best Practices khi triển khai API Versioning trong sản xuất
1.  **Chính sách ngưng hỗ trợ (Deprecation Policy) rõ ràng**: Thông báo trước cho khách hàng thời gian hỗ trợ các phiên bản cũ và gửi cảnh báo ngưng hoạt động (ví dụ: sử dụng HTTP headers `Sunset` và `Deprecation`).
2.  **Tránh đổi version khi thay đổi không gây lỗi (Non-breaking Changes)**: Việc thêm trường mới hoặc endpoint mới là tương thích ngược, không cần tăng số phiên bản.
3.  **Nhất quán**: Chọn một chiến lược duy nhất trong hệ thống và tuân thủ nó, tránh trộn lẫn nhiều kiểu versioning trong cùng một API Gateway.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-101', 'REST', 'REST', 'Mid', 'How can pagination be implemented in a REST API?', 'Phân trang có thể được triển khai như thế nào trong một REST API?', 'Pagination is crucial for REST APIs to handle large datasets efficiently, reducing memory footprint, network bandwidth, and response times. There are two primary patterns: **Offset-based** and **Cursor-based (Keyset)** pagination.

---

### 1. Offset-based Pagination
This is the simplest and most common approach. The client requests data using a starting point (`offset` or `page`) and a limit (`limit` or `size`).

*   **Request Example**:
    `GET /api/v1/products?page=2&size=20` (or `?offset=20&limit=20`)
*   **Database Query**:
    ```sql
    SELECT * FROM products ORDER BY id LIMIT 20 OFFSET 20;
    ```
*   **Pros**:
    *   Very easy to implement.
    *   Allows direct navigation to any specific page (e.g., page 5, page 10).
    *   Highly supported by frameworks (e.g., Spring Data JPA''s `Pageable` and `Page`).
*   **Cons**:
    *   **Performance degradation on large offsets**: The database must scan and discard all records prior to the offset (e.g., `OFFSET 1000000` is very slow).
    *   **Inconsistency (Data drift)**: If items are added or deleted while the user is paginating, they might see duplicate items or skip items entirely.

---

### 2. Cursor-based (Keyset) Pagination
Instead of passing page numbers, the client provides a pointer (a "cursor") pointing to the last item retrieved in the previous request. This cursor is typically a unique, sequential attribute like an ID or a timestamp combined with an ID.

*   **Request Example**:
    `GET /api/v1/products?limit=20&cursor=eyJpZCI6MTIwfQ==` (Base64 encoded string representing `{"id": 120}`)
*   **Database Query**:
    ```sql
    SELECT * FROM products WHERE id > 120 ORDER BY id LIMIT 20;
    ```
*   **Pros**:
    *   **High performance at scale**: The database uses an index on the cursor column (`id > 120`) to jump directly to the row, avoiding full table scans.
    *   **Consistent results**: Additions or deletions of items before the cursor do not shift current results, preventing duplicates or skipped items.
*   **Cons**:
    *   Does not support random page access (e.g., cannot skip directly to page 5).
    *   Implementation is more complex (encoding/decoding cursors).
    *   Requires a deterministic sorting key (must be unique and sequential).

---

### Standard Response Payload Structure
For production-grade REST APIs, pagination metadata should be clearly returned:

```json
{
  "data": [ ... ],
  "pagination": {
    "size": 20,
    "totalElements": 150,
    "totalPages": 8,
    "currentPage": 2,
    "hasNext": true,
    "hasPrevious": true,
    "nextPageUrl": "https://api.example.com/products?page=3&size=20"
  }
}
```
*Note: In Cursor-based pagination, replace `page`/`totalPages` with a `nextCursor` key.*', 'Phân trang (Pagination) là yếu tố cực kỳ quan trọng trong thiết kế REST API nhằm xử lý hiệu quả các tập dữ liệu lớn, giúp giảm thiểu tải bộ nhớ, băng thông mạng và thời gian phản hồi. Có hai mô hình chính: **Offset-based** và **Cursor-based (Keyset)**.

---

### 1. Phân trang dựa trên Offset (Offset-based Pagination)
Đây là cách tiếp cận phổ biến và dễ hiểu nhất. Client yêu cầu dữ liệu thông qua điểm bắt đầu (`offset` hoặc `page`) và giới hạn số lượng phần tử (`limit` hoặc `size`).

*   **Ví dụ Request**:
    `GET /api/v1/products?page=2&size=20` (hoặc `?offset=20&limit=20`)
*   **Câu lệnh SQL**:
    ```sql
    SELECT * FROM products ORDER BY id LIMIT 20 OFFSET 20;
    ```
*   **Ưu điểm**:
    *   Dễ dàng triển khai.
    *   Hỗ trợ nhảy trang tùy ý (ví dụ: chuyển từ trang 1 sang trang 5 hoặc trang 10).
    *   Được hỗ trợ sẵn bởi hầu hết các framework (ví dụ: `Pageable` và `Page` trong Spring Data JPA).
*   **Nhược điểm**:
    *   **Hiệu năng giảm mạnh khi offset lớn**: Cơ sở dữ liệu phải quét và loại bỏ tất cả các bản ghi trước offset (ví dụ: `OFFSET 1000000` sẽ chạy rất chậm).
    *   **Dữ liệu không nhất quán (Data drift)**: Nếu có bản ghi được thêm/xóa trong quá trình phân trang, người dùng có thể gặp các bản ghi trùng lặp hoặc bị bỏ sót.

---

### 2. Phân trang dựa trên Con trỏ (Cursor-based / Keyset Pagination)
Thay vì truyền số trang, client sẽ truyền một con trỏ (cursor) đại diện cho phần tử cuối cùng nhận được từ request trước đó. Con trỏ này thường là một thuộc tính định danh duy nhất và có thứ tự (như ID hoặc sự kết hợp giữa Timestamp và ID).

*   **Ví dụ Request**:
    `GET /api/v1/products?limit=20&cursor=eyJpZCI6MTIwfQ==` (Chuỗi Base64 mã hóa của `{"id": 120}`)
*   **Câu lệnh SQL**:
    ```sql
    SELECT * FROM products WHERE id > 120 ORDER BY id LIMIT 20;
    ```
*   **Ưu điểm**:
    *   **Hiệu năng cực cao trên tập dữ liệu lớn**: Database sử dụng index trên cột cursor (`id > 120`) để nhảy thẳng tới bản ghi, tránh việc quét toàn bộ bảng.
    *   **Dữ liệu nhất quán**: Việc thêm/xóa dữ liệu phía trước con trỏ không ảnh hưởng tới phân trang hiện tại, hạn chế trùng lặp dữ liệu.
*   **Nhược điểm**:
    *   Không hỗ trợ nhảy trang ngẫu nhiên (ví dụ: không thể nhảy trực tiếp sang trang 5).
    *   Logic triển khai phức tạp hơn (phải mã hóa/giải mã con trỏ).
    *   Yêu cầu trường sắp xếp phải có tính duy nhất và tuần tự.

---

### Cấu trúc Response chuẩn trong REST API
Đối với REST API thực tế, metadata phân trang nên được trả về rõ ràng:

```json
{
  "data": [ ... ],
  "pagination": {
    "size": 20,
    "totalElements": 150,
    "totalPages": 8,
    "currentPage": 2,
    "hasNext": true,
    "hasPrevious": true,
    "nextPageUrl": "https://api.example.com/products?page=3&size=20"
  }
}
```
*Lưu ý: Đối với Cursor-based pagination, ta sẽ thay các trường `page`/`totalPages` bằng trường chứa giá trị con trỏ tiếp theo (`nextCursor`).*', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-102', 'REST', 'REST', 'Mid', 'How should filtering and sorting be designed in a REST API?', 'Việc lọc và sắp xếp nên được thiết kế như thế nào trong một REST API?', 'Designing clear, consistent, and performant filtering and sorting APIs is essential for robust API integration.

### 1. Filtering Design

#### A. Simple Key-Value Filtering
Used for exact matching. Query parameters map directly to field values.
*   **Example**: `GET /products?category=electronics&status=instock`
*   **Best for**: Simple queries on fixed fields.

#### B. Logical Operators (LHS Brackets or Sub-parameters)
For ranges, inequalities (`>`, `<`, `>=`), or negation (`!=`), use Left-Hand Side (LHS) brackets.
*   **Example**: `GET /products?price[gte]=100&price[lte]=500`
*   **Alternate (RHS colon)**: `GET /products?price=gte:100&price=lte:500`
*   **Best for**: Search forms and range filters.

#### C. Search / Query Languages (RSQL/FIQL)
For highly complex operations with nested `AND`/`OR` conditions.
*   **Example**: `GET /products?search=category==electronics;price>100,(status==instock;brand==sony)`
*   *Note: `;` stands for `AND`, `,` stands for `OR`.*
*   **Best for**: Advanced search interfaces. In Spring Boot, this can be parsed and converted directly into a JPA Specification using libraries like `rsql-jpa-specification`.

---

### 2. Sorting Design

#### A. Multi-field Sorting Parameter
Use a single query parameter (usually `sort`) accepting comma-separated fields. Direction can be specified with prefixes (like `-` for descending) or explicit keywords.
*   **Example 1 (Prefix approach)**: `GET /products?sort=-price,name` (sort by price DESC, then name ASC)
*   **Example 2 (Explicit approach)**: `GET /products?sort=price:desc,name:asc`

In Spring MVC, this maps directly to `org.springframework.data.domain.Sort` automatically.

---

### 3. Implementation in Spring Boot (Backend Architecture)
To implement filtering and sorting efficiently without writing massive SQL or boilerplate controllers, use **Spring Data JPA Specifications** or **QueryDSL**.

*   **Controller signature**:
    ```java
    @GetMapping("/products")
    public ResponseEntity<Page<Product>> getProducts(
            @RequestParam(required = false) String category,
            @RequestParam(required = false) Double minPrice,
            @PageableDefault(sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
        
        Specification<Product> spec = Specification.where(null);
        if (category != null) {
            spec = spec.and((root, query, cb) -> cb.equal(root.get("category"), category));
        }
        if (minPrice != null) {
            spec = spec.and((root, query, cb) -> cb.greaterThanOrEqualTo(root.get("price"), minPrice));
        }
        
        return ResponseEntity.ok(productRepository.findAll(spec, pageable));
    }
    ```
*   This approach cleanly separates request parsing, dynamic query construction, and pagination/sorting handling.', 'Thiết kế các API lọc (filtering) và sắp xếp (sorting) rõ ràng, nhất quán và hiệu năng cao là điều cần thiết để phục vụ tích hợp API một cách linh hoạt.

### 1. Thiết kế Lọc (Filtering)

#### A. Lọc Key-Value đơn giản
Dùng cho so khớp chính xác (exact match). Các query parameters ánh xạ trực tiếp tới các trường của thực thể.
*   **Ví dụ**: `GET /products?category=electronics&status=instock`
*   **Phù hợp**: Các câu truy vấn đơn giản trên các trường cố định.

#### B. Các toán tử so sánh (LHS Brackets hoặc Sub-parameters)
Để lọc theo phạm vi (range), bất đẳng thức (`>`, `<`, `>=`), hoặc so sánh phủ định (`!=`), ta có thể sử dụng định dạng Left-Hand Side (LHS) brackets.
*   **Ví dụ**: `GET /products?price[gte]=100&price[lte]=500`
*   **Cách viết khác (RHS với dấu hai chấm)**: `GET /products?price=gte:100&price=lte:500`
*   **Phù hợp**: Bộ lọc tìm kiếm theo tầm giá, ngày tháng.

#### C. Ngôn ngữ truy vấn mở rộng (RSQL/FIQL)
Dành cho trường hợp tìm kiếm cực kỳ phức tạp với các điều kiện `AND`/`OR` lồng nhau.
*   **Ví dụ**: `GET /products?search=category==electronics;price>100,(status==instock;brand==sony)`
*   *Lưu ý: `;` đại diện cho `AND`, `,` đại diện cho `OR`.*
*   **Phù hợp**: Giao diện tìm kiếm nâng cao. Trong Spring Boot, chuỗi này có thể được parse trực tiếp thành JPA Specification nhờ các thư viện như `rsql-jpa-specification`.

---

### 2. Thiết kế Sắp xếp (Sorting)

#### A. Tham số sắp xếp đa trường (Multi-field)
Sử dụng một query parameter duy nhất (thường là `sort`) nhận vào danh sách các trường phân cách bằng dấu phẩy. Chiều sắp xếp được chỉ định bằng ký tự tiền tố (như `-` cho giảm dần) hoặc từ khóa.
*   **Ví dụ 1 (Dùng tiền tố)**: `GET /products?sort=-price,name` (sắp xếp theo giá giảm dần, sau đó tên tăng dần)
*   **Ví dụ 2 (Dùng từ khóa tường minh)**: `GET /products?sort=price:desc,name:asc`

Trong Spring MVC, cấu trúc này có thể tự động map sang đối tượng `org.springframework.data.domain.Sort`.

---

### 3. Triển khai trong Spring Boot
Để triển khai filtering và sorting hiệu quả mà không cần viết nhiều code SQL thủ công hoặc Controller quá tải, hãy tận dụng **Spring Data JPA Specifications** hoặc **QueryDSL**.

*   **Code Controller mẫu**:
    ```java
    @GetMapping("/products")
    public ResponseEntity<Page<Product>> getProducts(
            @RequestParam(required = false) String category,
            @RequestParam(required = false) Double minPrice,
            @PageableDefault(sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
        
        Specification<Product> spec = Specification.where(null);
        if (category != null) {
            spec = spec.and((root, query, cb) -> cb.equal(root.get("category"), category));
        }
        if (minPrice != null) {
            spec = spec.and((root, query, cb) -> cb.greaterThanOrEqualTo(root.get("price"), minPrice));
        }
        
        return ResponseEntity.ok(productRepository.findAll(spec, pageable));
    }
    ```
*   Cách tiếp cận này phân tách rõ ràng việc phân tích request, dựng câu query động và xử lý phân trang/sắp xếp ở tầng DB.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-103', 'Web Security', 'Bảo mật Web', 'Mid', 'What is CORS?', 'CORS là gì?', '**CORS (Cross-Origin Resource Sharing)** is an HTTP-header based security mechanism controlled by browser clients that allows a server to explicitly indicate any origins (domain, scheme, or port) other than its own from which a browser should permit loading resources.

### Why is CORS Necessary?
By default, web browsers enforce the **Same-Origin Policy (SOP)**. SOP prevents a malicious script on one website (e.g., `malicious-site.com`) from making requests to read sensitive data from another website (e.g., `bank.com`) using the user''s active session. 
CORS provides a standardized way to safely relax this policy for trusted cross-origin requests (e.g., a frontend app hosted on `app.example.com` calling a backend API on `api.example.com`).

---

### How CORS Works (Simple vs. Preflight Requests)

#### 1. Simple Requests
For safe methods (like `GET`, `POST` with specific standard headers and content types like `application/x-www-form-urlencoded`), the browser sends the request directly but includes the `Origin` header.
*   The server responds, including `Access-Control-Allow-Origin: https://app.example.com`.
*   If the header matches the request''s origin, the browser allows the frontend code to read the response. Otherwise, it blocks the response.

#### 2. Preflight Requests (OPTIONS)
For requests that could modify data (like `PUT`, `DELETE`, or `POST` with `application/json`), the browser first sends an preliminary handshake request using the `OPTIONS` method.
*   **Preflight Request**:
    ```http
    OPTIONS /users/1 HTTP/1.1
    Origin: https://app.example.com
    Access-Control-Request-Method: DELETE
    ```
*   **Preflight Response** (from Server):
    ```http
    HTTP/1.1 200 OK
    Access-Control-Allow-Origin: https://app.example.com
    Access-Control-Allow-Methods: GET, POST, DELETE, PUT
    Access-Control-Allow-Headers: Content-Type, Authorization
    ```
*   If approved, the browser proceeds to fire the actual `DELETE` request.

---

### How to Configure CORS in Spring Boot

#### A. Annotation Level (`@CrossOrigin`)
```java
@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "https://app.example.com")
public class ProductController {
    // Endpoints here
}
```

#### B. Global Configuration (Filter level - Recommended for Spring Security)
When using Spring Security, CORS must be configured at the security filter level so that `OPTIONS` preflight requests are not blocked by authentication filters.
```java
@Bean
public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
    http
        .cors(cors -> cors.configurationSource(corsConfigurationSource()))
        // ... other security configs
    return http.build();
}

@Bean
public CorsConfigurationSource corsConfigurationSource() {
    CorsConfiguration configuration = new CorsConfiguration();
    configuration.setAllowedOrigins(List.of("https://app.example.com"));
    configuration.setAllowedMethods(List.of("GET", "POST", "PUT", "DELETE", "OPTIONS"));
    configuration.setAllowedHeaders(List.of("Authorization", "Content-Type"));
    configuration.setAllowCredentials(true); // Needed if cookies/auth headers are sent
    
    UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
    source.registerCorsConfiguration("/**", configuration);
    return source;
}
```', '**CORS (Cross-Origin Resource Sharing - Chia sẻ tài nguyên giữa các nguồn khác nhau)** là một cơ chế bảo mật dựa trên các HTTP header được thực thi bởi trình duyệt. Nó cho phép máy chủ chỉ định rõ ràng các nguồn (Origin bao gồm: domain, giao thức, hoặc cổng) ngoài nguồn của chính nó được phép tải tài nguyên về trình duyệt.

### Tại sao CORS lại cần thiết?
Theo mặc định, trình duyệt web áp dụng **Chính sách cùng nguồn gốc (Same-Origin Policy - SOP)**. SOP ngăn chặn mã độc từ một trang web (ví dụ: `malicious-site.com`) gửi request để đọc dữ liệu nhạy cảm từ một trang khác (ví dụ: `bank.com`) bằng session đang hoạt động của người dùng.
CORS ra đời để nới lỏng chính sách SOP này một cách an toàn và có kiểm soát cho các request chéo nguồn đáng tin cậy (ví dụ: frontend chạy ở `app.example.com` gọi backend API ở `api.example.com`).

---

### Cách thức hoạt động của CORS (Simple vs. Preflight Request)

#### 1. Yêu cầu đơn giản (Simple Request)
Với các method an toàn (như `GET`, `POST` với các header tiêu chuẩn và content-type đơn giản như `application/x-www-form-urlencoded`), trình duyệt gửi request đi trực tiếp nhưng đính kèm thêm header `Origin`.
*   Server phản hồi kèm theo header `Access-Control-Allow-Origin: https://app.example.com`.
*   Nếu header phản hồi khớp với origin của request, trình duyệt cho phép code frontend đọc dữ liệu. Nếu không, trình duyệt sẽ chặn kết quả.

#### 2. Yêu cầu tiền kiểm tra (Preflight Request - OPTIONS)
Với các request có nguy cơ thay đổi dữ liệu hoặc cấu trúc phức tạp (như `PUT`, `DELETE`, hoặc `POST` gửi dữ liệu `application/json`), trình duyệt sẽ tự động gửi trước một request thăm dò bằng method `OPTIONS`.
*   **Preflight Request**:
    ```http
    OPTIONS /users/1 HTTP/1.1
    Origin: https://app.example.com
    Access-Control-Request-Method: DELETE
    ```
*   **Preflight Response** (phản hồi từ Server):
    ```http
    HTTP/1.1 200 OK
    Access-Control-Allow-Origin: https://app.example.com
    Access-Control-Allow-Methods: GET, POST, DELETE, PUT
    Access-Control-Allow-Headers: Content-Type, Authorization
    ```
*   Nếu được server chấp thuận, trình duyệt mới thực thi việc gửi request `DELETE` thực tế.

---

### Cách cấu hình CORS trong Spring Boot

#### A. Cấu hình mức Annotation (`@CrossOrigin`)
```java
@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "https://app.example.com")
public class ProductController {
    // Các endpoint
}
```

#### B. Cấu hình toàn cục (Global Configuration - Khuyên dùng khi có Spring Security)
Khi sử dụng Spring Security, CORS cần được cấu hình ở tầng filter bảo mật để đảm bảo các request preflight `OPTIONS` không bị chặn bởi các filter xác thực.
```java
@Bean
public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
    http
        .cors(cors -> cors.configurationSource(corsConfigurationSource()))
        // ... các cấu hình bảo mật khác
    return http.build();
}

@Bean
public CorsConfigurationSource corsConfigurationSource() {
    CorsConfiguration configuration = new CorsConfiguration();
    configuration.setAllowedOrigins(List.of("https://app.example.com"));
    configuration.setAllowedMethods(List.of("GET", "POST", "PUT", "DELETE", "OPTIONS"));
    configuration.setAllowedHeaders(List.of("Authorization", "Content-Type"));
    configuration.setAllowCredentials(true); // Bắt buộc nếu có gửi kèm cookies/auth headers
    
    UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
    source.registerCorsConfiguration("/**", configuration);
    return source;
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-104', 'Web Security', 'Bảo mật Web', 'Junior', 'What is the difference between authentication and authorization?', 'Sự khác biệt giữa authentication (xác thực) và authorization (phân quyền) là gì?', 'Authentication and Authorization are two distinct security processes that work together to secure resources.

| Feature | Authentication (AuthN) | Authorization (AuthZ) |
| :--- | :--- | :--- |
| **Definition** | Verifies **who** a user/service is. | Determines **what** a user/service is allowed to do. |
| **Timing** | Occurs **first** in the security lifecycle. | Occurs **after** successful authentication. |
| **Input Data** | Credentials (username/password, OTP, biometrics, JWT/Tokens). | Roles, scopes, permissions, policies. |
| **Spring Security Representation** | `Authentication` object (specifically the `Principal`). | `GrantedAuthority` (e.g., `ROLE_ADMIN`, `write:products`). |
| **Example Scenario** | Logging in with a username and password. | A logged-in user trying to delete a database entry. |

### Real-world Analogy
*   **Authentication** is like getting a **boarding pass** at the airport counter by showing your passport. It proves you are indeed the person named on the ticket.
*   **Authorization** is like the gate agent checking your boarding pass to see if you are allowed to board First Class or only Economy Class.', 'Authentication (Xác thực) và Authorization (Phân quyền) là hai quy trình bảo mật độc lập nhưng bổ trợ cho nhau để bảo vệ hệ thống.

| Đặc điểm | Authentication (Xác thực - AuthN) | Authorization (Phân quyền - AuthZ) |
| :--- | :--- | :--- |
| **Khái niệm** | Xác minh danh tính: Bạn là **ai**? | Xác định quyền hạn: Bạn được phép **làm gì**? |
| **Thứ tự thực hiện** | Diễn ra **trước**. | Diễn ra **sau** khi đã xác thực thành công. |
| **Thông tin đầu vào** | Thông tin đăng nhập (username/password, OTP, sinh trắc học, JWT). | Vai trò (Roles), phạm vi truy cập (Scopes), quyền hạn (Permissions). |
| **Thể hiện trong Spring Security** | Đối tượng `Authentication` (cụ thể là `Principal`). | `GrantedAuthority` (ví dụ: `ROLE_ADMIN`, `write:products`). |
| **Ví dụ thực tế** | Nhập tài khoản và mật khẩu để đăng nhập. | Kiểm tra xem tài khoản vừa đăng nhập có được xóa bài viết không. |

### Ví dụ tương quan thực tế
*   **Authentication** giống như việc bạn trình hộ chiếu ở sân bay để nhận **thẻ lên máy bay (boarding pass)**. Nó chứng minh bạn đúng là người có tên trên vé.
*   **Authorization** giống như việc nhân viên cửa khởi hành kiểm tra thẻ lên máy bay xem bạn có được phép vào khoang Hạng nhất (First Class) hay chỉ được vào khoang Phổ thông (Economy).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-105', 'Spring Security', 'Spring Security', 'Junior', 'What is Spring Security?', 'Spring Security là gì?', '**Spring Security** is a powerful, highly customizable authentication and access-control framework. It is the de-facto standard for securing Spring-based applications.

### Core Features

1.  **Authentication (AuthN)**: Comprehensive and extensible support for verifying user identities. Out of the box, it supports:
    *   Form Login, Basic Authentication, OAuth 2.0 / OpenID Connect, LDAP, Active Directory, JAAS, and custom token-based mechanisms (like JWT).
2.  **Authorization (AuthZ)**: Access control at multiple levels:
    *   **Web Request Authorization**: Declaring which URLs require authentication or specific roles.
    *   **Method-Level Security**: Securing service layer beans using annotations like `@PreAuthorize` or `@Secured`.
    *   **Domain Object Instance Security**: Controlling access to specific database rows (ACLs).
3.  **Protection Against Common Exploits**:
    *   **CSRF (Cross-Site Request Forgery)** protection.
    *   **Session Fixation** protection.
    *   **Security Headers**: Automatically adds security response headers like `X-Frame-Options` (Clickjacking prevention), `HSTS`, and `Content-Security-Policy`.

### How it Works (Under the Hood)
Spring Security''s web protection is based on standard **Servlet Filters**. It intercepts HTTP requests before they reach your Spring MVC Controllers, validates credentials, checks permissions, and rejects unauthorized access early in the request lifecycle.', '**Spring Security** là một framework mạnh mẽ và có khả năng tùy biến cực cao, chuyên dùng để giải quyết các vấn đề về xác thực (authentication) và kiểm soát truy cập (access-control) cho các ứng dụng dựa trên nền tảng Spring.

### Các tính năng cốt lõi

1.  **Xác thực (Authentication)**: Hỗ trợ kiểm tra danh tính người dùng một cách toàn diện và linh hoạt. Spring Security tích hợp sẵn nhiều cơ chế:
    *   Đăng nhập qua Form (Form Login), Basic Authentication, OAuth 2.0 / OpenID Connect, LDAP, Active Directory, và các cơ chế token tùy chỉnh (như JWT).
2.  **Phân quyền (Authorization)**: Kiểm soát truy cập ở nhiều cấp độ:
    *   **Web Request Authorization**: Khai báo các URL nào yêu cầu xác thực hoặc vai trò (Role) tương ứng.
    *   **Method-Level Security**: Bảo mật trực tiếp trên các phương thức của tầng Service sử dụng các annotation như `@PreAuthorize` hay `@Secured`.
    *   **ACL (Access Control Lists)**: Phân quyền chi tiết trên từng thực thể (dòng dữ liệu) trong cơ sở dữ liệu.
3.  **Phòng chống tấn công phổ biến (Web Exploits)**:
    *   Chống tấn công giả mạo yêu cầu chéo trang **CSRF (Cross-Site Request Forgery)**.
    *   Bảo vệ chống tấn công **Session Fixation**.
    *   Tự động bổ sung các **Security Headers** như `X-Frame-Options` (chống Clickjacking), `HSTS` và `Content-Security-Policy`.

### Cơ chế hoạt động cốt lõi
Hệ thống bảo mật web của Spring Security hoạt động dựa trên cơ chế **Servlet Filter**. Nó chặn đứng các request HTTP trước khi chúng tới được Spring MVC Controller để tiến hành kiểm tra thông tin đăng nhập, xác thực quyền hạn và từ chối các request không hợp lệ ngay lập tức.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-106', 'Spring Security', 'Spring Security', 'Senior', 'How does the Spring Security filter chain work?', 'Filter chain của Spring Security hoạt động như thế nào?', 'Spring Security''s web protection architecture is built entirely on top of standard Servlet Filters. Because the Servlet container (like Tomcat) doesn''t know about Spring Beans, Spring Security uses a bridge mechanism to hook into the Servlet filter lifecycle.

---

### Architecture Components

```
[Servlet Container]
        │
  [DelegatingFilterProxy] (Standard Servlet Filter, delegates to Spring bean)
        │
  [FilterChainProxy] (Spring-managed Bean, coordinates list of SecurityFilterChains)
        │
┌───────┴──────────────────────────────┐
│  SecurityFilterChain 1 (Matches /api/**)
│  ├─ WebAsyncManagerIntegrationFilter
│  ├─ SecurityContextHolderFilter (Creates/Loads SecurityContext)
│  ├─ CorsFilter
│  ├─ CsrfFilter
│  ├─ UsernamePasswordAuthenticationFilter (Authenticates credentials)
│  ├─ BearerTokenAuthenticationFilter (If JWT/OAuth2 is used)
│  ├─ ExceptionTranslationFilter (Catches security exceptions)
│  └─ AuthorizationFilter (Performs access checks)
└──────────────────────────────────────┘
```

1.  **DelegatingFilterProxy**:
    A standard Servlet Filter registered in the Servlet container. It acts as a bridge, delegating all operations to a Spring-managed Bean called `FilterChainProxy`.
2.  **FilterChainProxy**:
    A Spring Bean that wraps one or more `SecurityFilterChain` instances. It determines which `SecurityFilterChain` should process the request based on request matchers (e.g., path, headers).
3.  **SecurityFilterChain**:
    An interface containing a list of Spring Security Filters that should be applied to the current request.

---

### Key Filters in the Chain (in Order of Execution)

1.  **SecurityContextHolderFilter** (previously `SecurityContextPersistenceFilter`):
    Loads the security context (if one exists, e.g., from HTTP session) into the `SecurityContextHolder` so subsequent filters can access authentication details.
2.  **CorsFilter / CsrfFilter**:
    Handles CORS preflight checks and CSRF validation/token generation.
3.  **Authentication Filters** (e.g., `UsernamePasswordAuthenticationFilter`, `BasicAuthenticationFilter`, `BearerTokenAuthenticationFilter`):
    Interceptors that extract credentials from the request, convert them to an `Authentication` token, and invoke the `AuthenticationManager` to validate the user.
4.  **ExceptionTranslationFilter**:
    Does not perform checks but catches security exceptions (`AuthenticationException` and `AccessDeniedException`) thrown down the line and handles them (e.g., redirecting to login page or returning a `401 Unauthorized` status).
5.  **AuthorizationFilter** (previously `FilterSecurityInterceptor`):
    The final gatekeeper. It checks if the current authenticated user has the necessary roles/permissions to access the requested URI.', 'Kiến trúc bảo mật web của Spring Security được xây dựng hoàn toàn dựa trên các Servlet Filter tiêu chuẩn. Do Servlet Container (như Tomcat) không thể nhận diện trực tiếp các Spring Bean, Spring Security sử dụng một cơ chế cầu nối để tích hợp vào vòng đời của Servlet Filter.

---

### Các thành phần kiến trúc chính

```
[Servlet Container]
        │
  [DelegatingFilterProxy] (Servlet Filter chuẩn, ủy quyền cho Spring bean)
        │
  [FilterChainProxy] (Bean quản lý bởi Spring, điều phối các SecurityFilterChain)
        │
┌───────┴──────────────────────────────┐
│  SecurityFilterChain 1 (Khớp với /api/**)
│  ├─ WebAsyncManagerIntegrationFilter
│  ├─ SecurityContextHolderFilter (Khởi tạo/Nạp SecurityContext)
│  ├─ CorsFilter
│  ├─ CsrfFilter
│  ├─ UsernamePasswordAuthenticationFilter (Xác thực credentials)
│  ├─ BearerTokenAuthenticationFilter (Nếu dùng JWT/OAuth2)
│  ├─ ExceptionTranslationFilter (Bắt các ngoại lệ bảo mật)
│  └─ AuthorizationFilter (Kiểm tra quyền truy cập)
└──────────────────────────────────────┘
```

1.  **DelegatingFilterProxy**:
    Là một Servlet Filter tiêu chuẩn được đăng ký với Servlet Container. Nó đóng vai trò cầu nối, chuyển hướng (delegate) mọi xử lý bảo mật sang một Spring-managed Bean có tên là `FilterChainProxy`.
2.  **FilterChainProxy**:
    Là một Spring Bean bọc một hoặc nhiều cấu hình `SecurityFilterChain`. Nó quyết định xem `SecurityFilterChain` nào sẽ xử lý request hiện tại dựa trên các điều kiện so khớp (Request Matchers).
3.  **SecurityFilterChain**:
    Là một interface chứa danh sách các Filter bảo mật cụ thể sắp xếp theo thứ tự nhất định sẽ được áp dụng cho request hiện tại.

---

### Các Filter cốt lõi trong chuỗi (Theo thứ tự thực thi tiêu biểu)

1.  **SecurityContextHolderFilter** (trước đây là `SecurityContextPersistenceFilter`):
    Nạp đối tượng `SecurityContext` (nếu đã tồn tại, ví dụ từ HTTP Session) vào `SecurityContextHolder` để các filter phía sau có thể truy cập thông tin người dùng.
2.  **CorsFilter / CsrfFilter**:
    Xử lý các kiểm tra CORS preflight và xác thực/phát sinh CSRF token.
3.  **Authentication Filters** (ví dụ: `UsernamePasswordAuthenticationFilter`, `BasicAuthenticationFilter` hoặc `BearerTokenAuthenticationFilter`):
    Chặn các request để trích xuất credentials, chuyển chúng thành token xác thực và gọi `AuthenticationManager` để kiểm tra danh tính.
4.  **ExceptionTranslationFilter**:
    Không trực tiếp kiểm tra, mà có nhiệm vụ bắt các exception bảo mật (`AuthenticationException` và `AccessDeniedException`) được ném ra từ các filter phía sau để xử lý phù hợp (ví dụ: chuyển hướng tới trang login hoặc trả về mã HTTP `401 Unauthorized`).
5.  **AuthorizationFilter** (trước đây là `FilterSecurityInterceptor`):
    Chốt chặn cuối cùng. Kiểm tra xem người dùng hiện tại có đủ vai trò/quyền hạn để truy cập URI đích hay không.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-107', 'Spring Security', 'Spring Security', 'Mid', 'What is SecurityFilterChain?', 'SecurityFilterChain là gì?', '`SecurityFilterChain` is a core interface in Spring Security that defines a filter chain that can be matched against an incoming HTTP request. 

```java
public interface SecurityFilterChain {
    boolean matches(HttpServletRequest request);
    List<Filter> getFilters();
}
```

### Purpose and Mechanics
*   **Matching**: It uses the `matches` method (typically implementing URL pattern matching, like `/api/**` or `/admin/**`) to decide whether this specific chain applies to the incoming request.
*   **Execution**: If matched, `FilterChainProxy` will execute the list of filters returned by `getFilters()` in order.
*   **Granular Security Policies**: A Spring Boot application can define multiple `SecurityFilterChain` beans. For example:
    *   **Chain 1**: Matches `/api/**`, stateless, verifies JWT tokens.
    *   **Chain 2**: Matches `/public/**`, permits all requests, bypasses security.
    *   **Chain 3**: Matches default `/**`, stateful, uses session-based form login.

---

### Modern Component-Based Configuration (Spring Security 6.x)
In modern Spring Security, we configure the filter chain by declaring a `@Bean` of type `SecurityFilterChain`, instead of inheriting from the deprecated `WebSecurityConfigurerAdapter`.

```java
@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(authorize -> authorize
                .requestMatchers("/public/**").permitAll()
                .anyRequest().authenticated()
            )
            .formLogin(Customizer.withDefaults())
            .csrf(csrf -> csrf.disable());
            
        return http.build(); // Builds and returns the SecurityFilterChain instance
    }
}
```', '`SecurityFilterChain` là một interface cốt lõi trong Spring Security, định nghĩa một chuỗi các Filter bảo mật sẽ được áp dụng cho một HTTP request đầu vào nếu khớp cấu hình.

```java
public interface SecurityFilterChain {
    boolean matches(HttpServletRequest request);
    List<Filter> getFilters();
}
```

### Mục đích và Cơ chế hoạt động
*   **So khớp (Matching)**: Nó sử dụng phương thức `matches` (thường là so khớp mẫu URL như `/api/**` hoặc `/admin/**`) để quyết định xem chuỗi filter này có được áp dụng cho request hiện tại hay không.
*   **Thực thi**: Nếu khớp, `FilterChainProxy` sẽ gọi tuần tự danh sách các filter được trả về từ phương thức `getFilters()`.
*   **Chính sách bảo mật phân tầng**: Một ứng dụng Spring Boot có thể định nghĩa nhiều bean `SecurityFilterChain` riêng biệt. Ví dụ:
    *   **Chain 1**: Khớp với `/api/**`, không dùng session (stateless), xác thực qua JWT.
    *   **Chain 2**: Khớp với `/public/**`, cho phép truy cập tự do, bỏ qua kiểm tra bảo mật.
    *   **Chain 3**: Khớp với `/**` (mặc định), dùng session (stateful), đăng nhập qua Form.

---

### Cấu hình dựa trên Component hiện đại (Spring Security 6.x)
Trong các phiên bản Spring Security hiện tại, ta định nghĩa filter chain dưới dạng một `@Bean` kiểu `SecurityFilterChain`, thay thế hoàn toàn cho cách kế thừa lớp `WebSecurityConfigurerAdapter` cũ đã bị loại bỏ (deprecated).

```java
@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(authorize -> authorize
                .requestMatchers("/public/**").permitAll()
                .anyRequest().authenticated()
            )
            .formLogin(Customizer.withDefaults())
            .csrf(csrf -> csrf.disable());
            
        return http.build(); // Dựng và trả về đối tượng SecurityFilterChain
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-108', 'Spring Security', 'Spring Security', 'Mid', 'How can public and protected endpoints be configured in Spring Security?', 'Làm thế nào để cấu hình các endpoint công khai (public) và được bảo vệ (protected) trong Spring Security?', 'In modern Spring Security (6.x), public and protected endpoints are configured using the `SecurityFilterChain` bean via the `HttpSecurity` DSL. This is done by specifying path patterns and applying authorization rules using `.authorizeHttpRequests()`.

---

### Configuration Pattern (Spring Security 6.x)

Below is a standard production configuration highlighting the distinction between public resources (e.g., login, registration, static assets) and protected ones.

```java
@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            // 1. Disable CSRF for REST APIs (since tokens are stateless)
            .csrf(csrf -> csrf.disable())
            
            // 2. Define endpoint authorization rules
            .authorizeHttpRequests(auth -> auth
                // Public endpoints (Accessible by anyone without authentication)
                .requestMatchers("/api/v1/auth/**").permitAll()
                .requestMatchers("/v3/api-docs/**", "/swagger-ui/**").permitAll()
                
                // Role-based / Authority-based protection
                .requestMatchers("/api/v1/admin/**").hasRole("ADMIN")
                .requestMatchers(HttpMethod.DELETE, "/api/v1/products/**").hasAuthority("WRITE_PRIVILEGE")
                
                // Any other requests must be authenticated
                .anyRequest().authenticated()
            )
            
            // 3. Define authentication mechanism (e.g., standard HTTP Basic or JWT)
            .httpBasic(Customizer.withDefaults());

        return http.build();
    }
}
```

---

### Key Methods Explained:
1.  **`requestMatchers(...)`**: Matches incoming requests by URL patterns (Ant path style) or HTTP methods.
2.  **`permitAll()`**: Explicitly allows any visitor (anonymous or authenticated) to access the matched endpoints.
3.  **`authenticated()`**: Ensures the client must be logged in, regardless of their roles.
4.  **`hasRole("ADMIN")`**: Ensures the authenticated user has a specific role (checks for authority prefixed with `ROLE_`, i.e., `ROLE_ADMIN`).
5.  **`hasAuthority("WRITE_PRIVILEGE")`**: Checks for the exact authority name without any prefix additions.', 'Trong Spring Security hiện đại (phiên bản 6.x), các endpoint công khai (public) và được bảo vệ (protected) được cấu hình bên trong bean `SecurityFilterChain` thông qua `HttpSecurity` DSL. Việc này được thực hiện bằng cách chỉ định các mẫu đường dẫn và áp dụng các quy tắc phân quyền thông qua `.authorizeHttpRequests()`.

---

### Cấu hình chuẩn (Spring Security 6.x)

Dưới đây là một cấu hình thực tế phân biệt rõ ràng giữa các tài nguyên công khai (ví dụ: đăng nhập, đăng ký, tài liệu API) và các tài nguyên cần được bảo vệ.

```java
@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            // 1. Vô hiệu hóa CSRF cho REST API (khi sử dụng stateless token)
            .csrf(csrf -> csrf.disable())
            
            // 2. Định nghĩa các quy tắc phân quyền cho endpoint
            .authorizeHttpRequests(auth -> auth
                // Các endpoint công khai (Ai cũng có thể truy cập không cần login)
                .requestMatchers("/api/v1/auth/**").permitAll()
                .requestMatchers("/v3/api-docs/**", "/swagger-ui/**").permitAll()
                
                // Bảo vệ dựa trên vai trò (Role) hoặc quyền hạn (Authority)
                .requestMatchers("/api/v1/admin/**").hasRole("ADMIN")
                .requestMatchers(HttpMethod.DELETE, "/api/v1/products/**").hasAuthority("WRITE_PRIVILEGE")
                
                // Tất cả các request khác đều bắt buộc phải xác thực
                .anyRequest().authenticated()
            )
            
            // 3. Định nghĩa cơ chế xác thực (Ví dụ: HTTP Basic hoặc JWT)
            .httpBasic(Customizer.withDefaults());

        return http.build();
    }
}
```

---

### Giải thích các phương thức quan trọng:
1.  **`requestMatchers(...)`**: So khớp các request đầu vào theo mẫu URL (dạng Ant path) hoặc theo HTTP Method (GET, POST, DELETE,...).
2.  **`permitAll()`**: Cho phép tất cả mọi người (kể cả khách vãng lai chưa đăng nhập) truy cập.
3.  **`authenticated()`**: Bắt buộc client phải đăng nhập thành công trước khi truy cập.
4.  **`hasRole("ADMIN")`**: Bắt buộc người dùng phải có vai trò tương ứng (hệ thống sẽ kiểm tra authority có tiền tố `ROLE_`, cụ thể là `ROLE_ADMIN`).
5.  **`hasAuthority("WRITE_PRIVILEGE")`**: Kiểm tra chính xác tên quyền hạn mà không thêm bất kỳ tiền tố nào.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-109', 'Spring Security', 'Spring Security', 'Junior', 'What is PasswordEncoder?', 'PasswordEncoder là gì?', '`PasswordEncoder` is a service interface in Spring Security used to securely encode (hash) passwords and verify existing hashed passwords during login.

```java
public interface PasswordEncoder {
    String encode(CharSequence rawPassword);
    boolean matches(CharSequence rawPassword, String encodedPassword);
    default boolean upgradeEncoding(String encodedPassword) { return false; }
}
```

### Core Methods
1.  **`encode()`**: Hashes a raw plain-text password. This is used when a user registers or changes their password.
2.  **`matches()`**: Compares a raw password (submitted during login) against an existing hashed password (retrieved from the database). It returns `true` if they match, `false` otherwise.
    *   *Note: Since secure hashing algorithms use a random "salt" for each password, you cannot compare passwords using standard equality checks (like `rawPassword.equals(encodedPassword)`). The `matches` method extracts the salt from the encoded password and hashes the raw input with it before comparing.*

---

### Recommended Implementations
Modern Spring Security uses **`DelegatingPasswordEncoder`** by default. It prefixes the password hash with the algorithm identifier (e.g., `{bcrypt}...`), allowing the application to support multiple algorithms and upgrade security over time without breaking existing user accounts.

Common encoders:
*   **`BCryptPasswordEncoder`**: The industry standard. Utilizes the bcrypt adaptive hashing function, allowing configuration of the strength (work factor).
*   **`SCryptPasswordEncoder`**: Designed to resist custom hardware (ASIC/FPGA) attacks by using significant CPU and memory resources.
*   **`Argon2PasswordEncoder`**: The winner of the Password Hashing Competition (PHC). It offers advanced parameter tuning against GPU/ASIC brute-forcing and is the most secure modern option.

---

### Usage Example in Service Layer
```java
@Service
public class UserService {

    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Autowired
    private UserRepository userRepository;

    public void registerUser(UserDto dto) {
        User user = new User();
        user.setUsername(dto.getUsername());
        // Encode raw password before saving to DB
        user.setPassword(passwordEncoder.encode(dto.getPassword()));
        userRepository.save(user);
    }
}
```', '`PasswordEncoder` là một service interface trong Spring Security được sử dụng để mã hóa (băm) mật khẩu một cách an toàn và kiểm tra tính hợp lệ của mật khẩu trong quá trình đăng nhập.

```java
public interface PasswordEncoder {
    String encode(CharSequence rawPassword);
    boolean matches(CharSequence rawPassword, String encodedPassword);
    default boolean upgradeEncoding(String encodedPassword) { return false; }
}
```

### Các phương thức cốt lõi
1.  **`encode()`**: Băm mật khẩu dạng văn bản thuần túy (plain text). Được sử dụng khi người dùng đăng ký tài khoản mới hoặc thay đổi mật khẩu.
2.  **`matches()`**: So sánh mật khẩu thô (client gửi lên khi đăng nhập) với mật khẩu đã băm lưu trong cơ sở dữ liệu. Trả về `true` nếu khớp và `false` nếu không khớp.
    *   *Lưu ý: Vì các thuật toán băm an toàn tự động thêm một chuỗi ngẫu nhiên gọi là "salt" (muối) cho mỗi mật khẩu, nên bạn không thể so sánh bằng toán tử bằng thông thường. Phương thức `matches` sẽ tách chuỗi salt ra từ mật khẩu đã băm, áp dụng băm mật khẩu thô với salt đó rồi mới tiến hành so sánh đối chiếu.*

---

### Các lớp triển khai khuyên dùng
Mặc định, Spring Security hiện đại sử dụng **`DelegatingPasswordEncoder`**. Nó sẽ tự động thêm tiền tố chỉ định thuật toán băm vào đầu chuỗi mật khẩu (ví dụ: `{bcrypt}...`), giúp hệ thống hỗ trợ nhiều thuật toán băm khác nhau và nâng cấp bảo mật mà không làm lỗi tài khoản người dùng cũ.

Các bộ mã hóa phổ biến:
*   **`BCryptPasswordEncoder`**: Tiêu chuẩn phổ biến nhất hiện nay. Sử dụng thuật toán băm thích ứng bcrypt, cho phép cấu hình độ khó (work factor).
*   **`SCryptPasswordEncoder`**: Thiết kế để chống lại các cuộc tấn công bằng phần cứng tùy chỉnh (ASIC/FPGA) bằng cách yêu cầu cấu hình tài nguyên CPU và bộ nhớ lớn.
*   **`Argon2PasswordEncoder`**: Thuật toán chiến thắng tại cuộc thi băm mật khẩu Password Hashing Competition (PHC). Hỗ trợ các cấu hình nâng cao chống tấn công brute-force bằng GPU/ASIC và là tùy chọn hiện đại, an toàn nhất.

---

### Ví dụ sử dụng trong Service Layer
```java
@Service
public class UserService {

    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Autowired
    private UserRepository userRepository;

    public void registerUser(UserDto dto) {
        User user = new User();
        user.setUsername(dto.getUsername());
        // Băm mật khẩu thô trước khi lưu xuống DB
        user.setPassword(passwordEncoder.encode(dto.getPassword()));
        userRepository.save(user);
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-110', 'Web Security', 'Bảo mật Web', 'Junior', 'Why should passwords never be stored in plain text?', 'Tại sao mật khẩu không bao giờ được lưu dưới dạng văn bản thuần túy (plain text)?', 'Storing passwords in plain text is one of the most severe security vulnerabilities an application can have. Passwords must always be processed using a cryptographically secure, one-way adaptive hashing function before being persisted.

### Reasons Why Plain Text Storage is Dangerous

1.  **Database Breaches (Data Leaks)**:
    If attackers breach the database (via SQL Injection, misconfigured backups, or server intrusion), they immediately gain access to every user''s raw password.
2.  **Password Reuse (Credential Stuffing)**:
    Most users reuse the same password across multiple websites. A breach on a single site exposing plain-text passwords allows hackers to compromise those users'' accounts on other major platforms (e.g., email, banking, social media).
3.  **Insider Threats**:
    Database administrators, developers, or anyone with read access to the database could view and abuse user passwords.
4.  **Compliance and Legal Liabilities**:
    Regulations like GDPR, HIPAA, and PCI-DSS mandate strict protection of user credentials. Storing them in plain text leads to massive fines, loss of customer trust, and severe legal liabilities.

---

### How to Protect Passwords Properly
*   **Use One-Way Hashing**: Algorithms like BCrypt, SCrypt, or Argon2 are one-way functions, meaning it is mathematically impossible to reverse-engineer the original password from the hash.
*   **Apply Salting**: A unique, cryptographically random string (salt) is appended to each password before hashing. This ensures that even if two users have the same password, their hashes will be completely different, protecting against **Rainbow Table** (pre-computed hash lookup) attacks.
*   **Use Key Stretching (Adaptive Algorithms)**: Adaptive hashing functions are deliberately designed to be computationally slow. This slows down brute-force attacks significantly (e.g., checking millions of password combinations per second becomes impossible because each check takes 100+ milliseconds).', 'Lưu trữ mật khẩu dưới dạng văn bản thuần túy (plain text) là một trong những lỗ hổng bảo mật nghiêm trọng nhất mà một ứng dụng có thể gặp phải. Mật khẩu bắt buộc phải được băm bằng các hàm băm một chiều thích ứng, an sau đó mới tiến hành lưu trữ vào cơ sở dữ liệu.

### Lý do tại sao lưu mật khẩu dạng Plain Text cực kỳ nguy hiểm

1.  **Rò rỉ cơ sở dữ liệu (Data Breaches)**:
    Nếu tin tặc tấn công thành công vào database (thông qua lỗi SQL Injection, sao lưu cấu hình sai hoặc xâm nhập máy chủ), chúng sẽ ngay lập tức có được mật khẩu thô của tất cả người dùng.
2.  **Thói quen dùng chung mật khẩu (Credential Stuffing)**:
    Đa số người dùng sử dụng chung một mật khẩu cho nhiều website khác nhau. Khi một trang web bị lộ mật khẩu thô, hacker có thể dùng thông tin đó để đăng nhập vào các tài khoản khác của họ như email, ngân hàng, hoặc mạng xã hội.
3.  **Mối đe dọa từ nội bộ (Insider Threats)**:
    Quản trị viên cơ sở dữ liệu (DBA), lập trình viên hoặc bất kỳ ai có quyền đọc database đều có thể xem trộm và lợi dụng mật khẩu của người dùng.
4.  **Tuân thủ pháp lý và trách nhiệm pháp lý**:
    Các quy chuẩn quốc tế như GDPR, HIPAA, PCI-DSS đều bắt buộc bảo vệ nghiêm ngặt thông tin xác thực. Lưu trữ mật khẩu dạng plain text sẽ dẫn tới các khoản phạt khổng lồ, mất uy tín thương hiệu và chịu trách nhiệm pháp lý nghiêm trọng.

---

### Cách bảo vệ mật khẩu đúng chuẩn
*   **Sử dụng hàm băm một chiều (One-Way Hashing)**: Các thuật toán như BCrypt, SCrypt, hoặc Argon2 là các hàm số một chiều, về mặt toán học là không thể đảo ngược để tìm lại mật khẩu gốc từ chuỗi hash.
*   **Áp dụng Salting (Thêm muối)**: Một chuỗi ký tự ngẫu nhiên (salt) được thêm vào mật khẩu trước khi băm. Điều này đảm bảo rằng ngay cả khi hai người dùng đặt mật khẩu giống hệt nhau, chuỗi băm của họ vẫn khác hoàn toàn, chống lại hình thức tấn công tra cứu bảng băm tính sẵn (**Rainbow Table**).
*   **Sử dụng Key Stretching (Thuật toán thích ứng)**: Các thuật toán băm này được thiết kế để tiêu tốn thời gian tính toán của CPU/RAM. Điều này làm chậm tốc độ thử-sai (brute-force) của tin tặc một cách đáng kể (ví dụ: việc thử hàng triệu mật khẩu mỗi giây trở nên bất khả thi khi mỗi lượt băm tốn khoảng 100 mili-giây).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-111', 'Web Security', 'Web Security', 'Mid', 'What is BCrypt and why is it commonly used?', 'BCrypt là gì và tại sao nó lại được sử dụng phổ biến?', '**BCrypt** is a password-hashing function designed by Niels Provos and David Mazières, based on the Blowfish cipher. It was presented at USENIX in 1999 and is widely considered the industry standard for secure password hashing.

##### Key Characteristics of BCrypt:
1. **Salting by Default**: BCrypt automatically incorporates a unique salt (a random string appended to the password) for each password. This protects against **Rainbow Table Attacks** (precomputed hash lists).
2. **Adaptive Work Factor (Key Stretching)**: BCrypt features a configurable cost parameter (or "work factor"). As hardware performance increases, the cost factor can be increased to make the hashing process slower. This mitigates **Brute-Force** and **Dictionary Attacks** because it requires substantial computational power to verify candidate passwords.
3. **One-Way Hash**: BCrypt is a cryptographic one-way function. It is computationally impossible to reverse the hash back to the original password.

##### Why is it commonly used?
* **Hardware Hardened against GPUs**: Unlike standard cryptographic hash functions like MD5, SHA-1, or SHA-256, which are designed to be fast and can be computed in parallel by GPUs and ASICs (making brute-forcing extremely fast), BCrypt is intentionally slow.
* **Flexibility & Future-proofing**: The cost factor allows developers to scale security over time without changing the underlying algorithm.
* **Standard Integration**: It is natively supported and recommended by major web frameworks, including Spring Security (`BCryptPasswordEncoder`).

##### Code Example in Spring Security:
```java
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordHasher {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12); // cost factor = 12
        
        // Hash a password
        String rawPassword = "mySecurePassword123";
        String hashedPassword = encoder.encode(rawPassword);
        System.out.println("Hashed: " + hashedPassword);
        
        // Match a password
        boolean isMatch = encoder.matches(rawPassword, hashedPassword);
        System.out.println("Match status: " + isMatch);
    }
}
```', '**BCrypt** là một hàm băm mật khẩu (password-hashing function) được thiết kế bởi Niels Provos và David Mazières, dựa trên thuật toán mã hóa Blowfish. Thuật toán này được giới thiệu tại USENIX năm 1999 và hiện được coi là tiêu chuẩn công nghiệp để lưu trữ mật khẩu an toàn.

##### Đặc điểm chính của BCrypt:
1. **Tự động thêm Salt (Muối)**: BCrypt tự động tích hợp một chuỗi muối ngẫu nhiên (salt) duy nhất cho mỗi mật khẩu. Điều này giúp ngăn chặn các cuộc tấn công **Rainbow Table** (danh sách hash đã được tính toán trước).
2. **Work Factor có khả năng điều chỉnh (Key Stretching)**: BCrypt tích hợp một tham số cấu hình độ phức tạp (cost factor). Khi sức mạnh phần cứng tăng lên, chúng ta có thể tăng cost factor để làm chậm quá trình băm, giúp hệ thống chống lại các cuộc tấn công **Brute-Force** và **Dictionary Attacks** do đòi hỏi tài nguyên tính toán cực kỳ lớn.
3. **Băm một chiều (One-Way Hash)**: BCrypt là hàm băm một chiều. Không thể đảo ngược mã băm này để lấy lại mật khẩu ban đầu.

##### Tại sao BCrypt lại được sử dụng phổ biến?
* **Chống lại tối ưu hóa của GPU**: Các hàm băm thông thường như MD5, SHA-1, hay SHA-256 được thiết kế để chạy nhanh và có thể được tính toán song song với hiệu năng cực lớn trên GPU/ASIC (giúp hacker brute-force rất nhanh). BCrypt cố tình được thiết kế chậm để vô hiệu hóa lợi thế này.
* **Tính linh hoạt & Tương thích tương lai**: Tham số Cost factor cho phép các nhà phát triển nâng cấp mức độ bảo mật theo thời gian mà không cần thay đổi thuật toán cốt lõi.
* **Hỗ trợ chuẩn hóa**: Được tích hợp sẵn và khuyến nghị sử dụng bởi hầu hết các framework lớn, bao gồm cả Spring Security (`BCryptPasswordEncoder`).

##### Ví dụ Code trong Spring Security:
```java
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordHasher {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12); // cost factor = 12
        
        // Băm mật khẩu
        String rawPassword = "mySecurePassword123";
        String hashedPassword = encoder.encode(rawPassword);
        System.out.println("Hashed: " + hashedPassword);
        
        // Kiểm tra mật khẩu trùng khớp
        boolean isMatch = encoder.matches(rawPassword, hashedPassword);
        System.out.println("Match status: " + isMatch);
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-112', 'REST', 'REST', 'Junior', 'What is the difference between 401 Unauthorized and 403 Forbidden?', 'Sự khác biệt giữa 401 Unauthorized và 403 Forbidden là gì?', 'Although both `401 Unauthorized` and `403 Forbidden` are HTTP status codes representing client errors related to access control, they signify different stages of security verification.

| Metric | `401 Unauthorized` | `403 Forbidden` |
| :--- | :--- | :--- |
| **Meaning** | **Authentication is required** or has failed. | **Authorization is denied**. The client is authenticated but does not have permission. |
| **Identity** | The identity of the client is **unknown** (or invalid credentials were provided). | The identity of the client is **known**, but they lack the necessary roles/permissions. |
| **Action needed** | Log in or provide valid authentication credentials (e.g., Bearer Token, API Key). | Do not retry the request with the same user credentials. Elevate the user''s roles or permissions. |
| **Analogy** | You don''t have a ticket to get into the building. | You have a ticket to the building, but you are trying to enter the VIP lounge, where you are not permitted. |

##### Spring Security Mapping:
* **401 Unauthorized** is triggered by `AuthenticationEntryPoint` when an unauthenticated user attempts to access a protected resource.
* **403 Forbidden** is triggered by `AccessDeniedHandler` when an authenticated user attempts to access a resource that requires a role or permission they do not possess.', 'Mặc dù cả `401 Unauthorized` và `403 Forbidden` đều là các mã trạng thái HTTP biểu thị lỗi phía client liên quan đến kiểm soát truy cập, chúng đại diện cho các giai đoạn xác minh bảo mật khác nhau.

| Tiêu chí | `401 Unauthorized` | `403 Forbidden` |
| :--- | :--- | :--- |
| **Ý nghĩa** | **Yêu cầu Xác thực (Authentication)**. Xác thực chưa được thực hiện hoặc đã thất bại. | **Yêu cầu Phân quyền (Authorization)**. Client đã được xác thực nhưng bị từ chối quyền truy cập. |
| **Trạng thái định danh** | Danh tính của client **chưa được xác định** (hoặc thông tin đăng nhập không hợp lệ). | Danh tính của client **đã xác định**, nhưng họ không có vai trò (roles) hoặc quyền (permissions) phù hợp. |
| **Cách xử lý** | Đăng nhập lại hoặc cung cấp thông tin xác thực hợp lệ (ví dụ: Bearer Token, API Key). | Không thử lại yêu cầu với thông tin đăng nhập cũ. Cần nâng cấp quyền hoặc vai trò của người dùng. |
| **Ví dụ thực tế** | Bạn không có vé để vào cổng tòa nhà. | Bạn đã mua vé vào tòa nhà, nhưng bạn đang cố gắng đi vào phòng VIP - nơi bạn không có quyền truy cập. |

##### Phân loại trong Spring Security:
* **401 Unauthorized** được kích hoạt bởi `AuthenticationEntryPoint` khi người dùng chưa xác thực cố gắng truy cập tài nguyên bị bảo vệ.
* **403 Forbidden** được kích hoạt bởi `AccessDeniedHandler` khi người dùng đã xác thực thành công nhưng cố gắng truy cập tài nguyên yêu cầu quyền hạn cao hơn quyền họ đang có.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-113', 'Web Security', 'Web Security', 'Mid', 'What is CSRF?', 'CSRF là gì?', '**CSRF (Cross-Site Request Forgery)**, also known as "one-click attack" or "session riding", is a type of malicious exploit where an unauthorized command is transmitted from a user that the web application trusts.

##### How CSRF Works:
1. **Victim Authenticates**: A user successfully logs into a target application (e.g., `bank.com`) via their browser. The application sets a session identifier in a cookie.
2. **Victim Visits Malicious Site**: While still logged in, the user visits a malicious website (e.g., `evil.com`).
3. **Malicious Request Triggered**: The malicious site contains code (e.g., a hidden form or a script) that automatically sends a request to the target site (e.g., `bank.com/transfer?amount=1000&to=hacker`).
4. **Browser Sends Cookie Automatically**: Since the browser automatically appends cookies associated with `bank.com` to any requests sent to `bank.com`, the request is processed by the server under the victim''s session.
5. **Impact**: The application executes the state-changing request on behalf of the victim without their consent.

##### Primary Mitigation Strategies:
* **Anti-CSRF Tokens (Synchronizer Token Pattern)**: The server generates a unique, cryptographically strong, and unpredictable token for the user session. All state-changing requests (POST, PUT, DELETE) must include this token in the header or form body.
* **SameSite Cookie Attribute**: Setting `SameSite=Strict` or `SameSite=Lax` on session cookies ensures the browser does not send the cookie along with cross-site requests.', '**CSRF (Cross-Site Request Forgery - Tấn công giả mạo yêu cầu chéo trang)**, hay còn gọi là tấn công "one-click" hoặc "session riding", là một loại lỗ hổng bảo mật web trong đó kẻ tấn công lừa trình duyệt của người dùng thực hiện một hành động ngoài ý muốn trên một ứng dụng web đáng tin cậy mà người dùng đã xác thực.

##### Quy trình hoạt động của CSRF:
1. **Nạn nhân xác thực**: Người dùng đăng nhập thành công vào ứng dụng mục tiêu (ví dụ: `bank.com`) qua trình duyệt. Ứng dụng thiết lập một session cookie.
2. **Nạn nhân truy cập trang web độc hại**: Trong khi phiên đăng nhập vẫn còn hiệu lực, người dùng truy cập một trang web độc hại (ví dụ: `evil.com`).
3. **Kích hoạt yêu cầu độc hại**: Trang web độc hại chứa mã độc (như form ẩn hoặc mã Javascript) tự động gửi một request đến ứng dụng mục tiêu (ví dụ: `bank.com/transfer?amount=1000&to=hacker`).
4. **Trình duyệt tự động gửi Cookie**: Vì trình duyệt tự động gửi các cookie liên kết với tên miền `bank.com` kèm theo bất kỳ yêu cầu nào hướng tới `bank.com`, máy chủ sẽ xử lý yêu cầu đó dưới danh nghĩa phiên hoạt động hợp lệ của nạn nhân.
5. **Hậu quả**: Máy chủ thực hiện hành động thay đổi trạng thái theo yêu cầu của kẻ tấn công mà người dùng không hề hay biết.

##### Các biện pháp phòng chống chính:
* **Anti-CSRF Tokens (Synchronizer Token Pattern)**: Máy chủ tạo ra một token duy nhất, ngẫu nhiên, khó đoán cho mỗi phiên làm việc. Tất cả các yêu cầu thay đổi trạng thái (POST, PUT, DELETE) bắt buộc phải đính kèm token này trong HTTP header hoặc body của form.
* **Thuộc tính SameSite của Cookie**: Thiết lập thuộc tính `SameSite=Strict` hoặc `SameSite=Lax` trên session cookie giúp trình duyệt không gửi kèm cookie này trong các yêu cầu bắt nguồn từ một trang web khác.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-114', 'Web Security', 'Web Security', 'Mid', 'When is CSRF protection important?', 'Khi nào việc bảo vệ chống lại CSRF là quan trọng?', 'CSRF protection is critical under specific architectural and application states:

##### 1. Browser-based Environments with Cookie Authentication
CSRF attacks target the browser''s default behavior of automatically including cookies for cross-domain requests. If your application relies on **session cookies** (or any cookie stored in the browser) to maintain user sessions and authenticate requests, CSRF protection is **mandatory**.

##### 2. State-Changing Requests
CSRF occurs during operations that modify state on the server (side-effects), typically mapped to HTTP methods such as `POST`, `PUT`, `DELETE`, and `PATCH`. Read-only actions (like `GET` queries) should not perform state modifications, and thus do not require CSRF protection, provided the API follows REST conventions.

##### 3. Traditional Multi-Page Applications (MPAs)
In traditional web applications where HTML forms are rendered by the server and submitted to initiate actions, CSRF protection is highly critical because browsers naturally support cookie persistence and automatic form submissions.

##### When is it NOT required?
* When the client is a non-browser application (e.g., mobile apps, IoT devices, or desktop clients) that does not use cookies for session management.
* When using stateless token-based authentication (like JWT) stored in memory or storage where the client must explicitly attach it to a custom HTTP Header (like `Authorization: Bearer <Token>`), which browsers do not automatically send.', 'Việc bảo vệ chống lại CSRF là cực kỳ quan trọng trong các điều kiện kiến trúc và trạng thái ứng dụng cụ thể sau:

##### 1. Môi trường duyệt web sử dụng Xác thực bằng Cookie
Các cuộc tấn công CSRF khai thác cơ chế mặc định của trình duyệt: tự động gửi kèm cookie khi thực hiện các yêu cầu liên miền (cross-domain). Nếu ứng dụng của bạn dựa trên **session cookie** (hoặc bất kỳ cookie nào được lưu trữ trong trình duyệt) để duy trì phiên làm việc và xác thực, thì việc bật bảo vệ CSRF là **bắt buộc**.

##### 2. Các yêu cầu thay đổi trạng thái hệ thống (State-Changing Requests)
CSRF chỉ xảy ra trong các hoạt động sửa đổi dữ liệu hoặc trạng thái trên máy chủ (tác dụng phụ), thường được ánh xạ tới các phương thức HTTP như `POST`, `PUT`, `DELETE`, và `PATCH`. Các thao tác chỉ đọc (như truy vấn `GET`) không được phép làm thay đổi trạng thái, do đó không cần bảo vệ CSRF (miễn là API tuân thủ đúng chuẩn REST).

##### 3. Ứng dụng đa trang truyền thống (Multi-Page Applications - MPAs)
Trong các ứng dụng web truyền thống nơi các biểu mẫu HTML (forms) được render bởi server và submit để thực hiện các thao tác, CSRF cực kỳ quan trọng vì trình duyệt mặc định hỗ trợ cơ chế lưu trữ cookie tự động gửi kèm form.

##### Khi nào KHÔNG cần bảo vệ CSRF?
* Khi client là ứng dụng không chạy trên trình duyệt (như mobile apps, IoT, desktop clients) và không sử dụng cookie để quản lý session.
* Khi sử dụng cơ chế xác thực Stateless Token (như JWT) lưu ở bộ nhớ tạm hoặc Storage, nơi ứng dụng khách phải tự đính kèm Token này vào một Custom HTTP Header (ví dụ: `Authorization: Bearer <Token>`) - thứ trình duyệt không tự động đính kèm.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-115', 'Web Security', 'Web Security', 'Mid', 'Why is CSRF protection often disabled for stateless REST APIs?', 'Tại sao bảo vệ CSRF thường bị vô hiệu hóa đối với các stateless REST API?', 'Developers frequently disable CSRF protection (e.g., `.csrf(AbstractHttpConfigurer::disable)` in Spring Security) in stateless REST APIs. This is a secure and standard practice under specific architectural design:

##### 1. Stateless Architecture
A REST API is designed to be **stateless**. The server does not maintain user sessions (no `JSESSIONID` cookie, no HTTP session storage). 

##### 2. Use of Bearer Tokens in Headers
Stateless REST APIs typically use token-based authentication (e.g., JWT). These tokens are:
* Stored by the client in memory (JavaScript state) or web storage (`localStorage` / `sessionStorage`).
* Sent manually by client-side code via custom HTTP headers (such as `Authorization: Bearer <token>`).
* **Crucially**, browsers **never** automatically attach custom headers to cross-site requests. Therefore, a malicious site initiating a cross-site request (via forms or links) cannot access or append the JWT to the header.

##### 3. Absence of Cookie Reliance
Because the server does not read credentials from cookies for request validation, the browser''s automatic cookie transmission vulnerability (the core vehicle for CSRF) is not exploited.

> [!WARNING]
> If a REST API stores JWTs or session tokens in cookies with `HttpOnly` and without `SameSite=Strict/Lax` settings, it **is** vulnerable to CSRF. In such a scenario, CSRF protection must **not** be disabled.', 'Các nhà phát triển thường vô hiệu hóa bảo vệ CSRF (ví dụ: `.csrf(AbstractHttpConfigurer::disable)` trong Spring Security) đối với các stateless REST API. Đây là một thực hành an toàn và phổ biến dựa trên thiết kế kiến trúc cụ thể:

##### 1. Kiến trúc không lưu trạng thái (Stateless Architecture)
REST API được thiết kế theo mô hình **stateless**. Máy chủ không duy trì phiên làm việc của người dùng (không sử dụng cookie `JSESSIONID`, không lưu trữ HTTP session).

##### 2. Sử dụng Bearer Token trong Header
Các stateless REST API thường sử dụng xác thực dạng token (ví dụ: JWT). Các token này:
* Được client lưu giữ trong bộ nhớ ứng dụng (JavaScript state) hoặc bộ nhớ web (`localStorage` / `sessionStorage`).
* Được gửi thủ công bởi code của phía client thông qua các custom HTTP header (ví dụ: `Authorization: Bearer <token>`).
* **Điểm mấu chốt**: Trình duyệt **không bao giờ** tự động thêm custom header vào các cross-site request. Do đó, một trang web độc hại khi cố kích hoạt một request chéo trang sẽ không thể truy cập hoặc đính kèm JWT vào header này.

##### 3. Không phụ thuộc vào Cookie
Vì máy chủ không dùng cookie để xác thực người dùng cho mỗi request, cơ chế tự động gửi cookie của trình duyệt (vũ khí chính của tấn công CSRF) không có đất diễn.

> [!WARNING]
> Nếu một REST API lưu trữ JWT hoặc session token bên trong cookie (ngay cả khi có thuộc tính `HttpOnly`) mà không cấu hình `SameSite=Strict/Lax`, ứng dụng **vẫn** có thể bị tấn công CSRF. Trong trường hợp đó, **không được** tắt bảo vệ CSRF.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-116', 'JWT', 'JWT', 'Junior', 'What is JWT?', 'JWT là gì?', '**JWT (JSON Web Token)** is an open standard ([RFC 7519](https://tools.ietf.org/html/rfc7519)) that defines a compact and self-contained way for securely transmitting information between parties as a JSON object.

##### Key Attributes of JWT:
1. **Compact**: Due to its small size, a JWT can be sent via URLs, POST parameters, or inside HTTP headers (e.g., `Authorization: Bearer <Token>`).
2. **Self-contained**: The token contains all the necessary information about the user (e.g., user ID, roles, expiration time). The server does not need to query a database to validate the session, which makes it ideal for distributed microservices.
3. **Cryptographically Secure**: JWTs can be digitally signed using a secret (with the HMAC algorithm) or a public/private key pair (RSA or ECDSA) to verify the integrity and authenticity of the sender.

##### Standard Structure:
A JWT is represented as three base64url-encoded strings separated by dots (`.`):
$$\text{Header}.\text{Payload}.\text{Signature}$$

##### Typical Workflow:
```
[ Client ] --( credentials )--> [ Auth Server ]
[ Client ] <--( JWT returned )-- [ Auth Server ]

[ Client ] --( Request + Bearer JWT )--> [ Resource Server ]
[ Client ] <--( Validated JSON Data )--- [ Resource Server ]
```', '**JWT (JSON Web Token)** là một tiêu chuẩn mở ([RFC 7519](https://tools.ietf.org/html/rfc7519)) định nghĩa một phương thức gọn nhẹ (compact) và tự chứa (self-contained) để truyền tải thông tin một cách an toàn giữa các bên dưới dạng một đối tượng JSON.

##### Các đặc điểm chính của JWT:
1. **Gọn nhẹ (Compact)**: Nhờ kích thước nhỏ, JWT có thể được gửi dễ dàng qua URL, tham số POST, hoặc trong các HTTP header (ví dụ: `Authorization: Bearer <Token>`).
2. **Tự chứa (Self-contained)**: Token mang theo tất cả thông tin cần thiết về thực thể người dùng (như ID người dùng, vai trò, thời gian hết hạn). Máy chủ không cần truy vấn cơ sở dữ liệu để kiểm tra trạng thái phiên làm việc, làm cho nó lý tưởng cho kiến trúc microservices.
3. **An toàn về mặt mã hóa**: JWT có thể được ký số (digitally signed) bằng một mã bí mật (sử dụng thuật toán HMAC) hoặc một cặp khóa public/private key (sử dụng RSA hoặc ECDSA) để xác minh tính toàn vẹn và tính xác thực của người gửi.

##### Cấu trúc tiêu chuẩn:
Một JWT được biểu diễn dưới dạng ba chuỗi được mã hóa base64url cách nhau bởi dấu chấm (`.`):
$$\text{Header}.\text{Payload}.\text{Signature}$$', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-117', 'JWT', 'JWT', 'Junior', 'What are the three parts of a JWT?', 'Ba phần của một JWT là gì?', 'A JWT is composed of three parts, separated by periods (`.`):

##### 1. Header
The header typically consists of two parts: the type of the token (which is `JWT`) and the signing algorithm being used (such as `HS256` or `RS256`).
```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```

##### 2. Payload
The payload contains the **claims**. Claims are statements about an entity (typically, the user) and additional metadata. There are three types of claims:
* **Registered claims**: Recommended, predefined claims (e.g., `iss` (issuer), `exp` (expiration time), `sub` (subject), `aud` (audience)).
* **Public claims**: Defined at will by those using JWTs but should be collision-resistant.
* **Private claims**: Custom claims created to share information between parties (e.g., `roles`, `userId`).
```json
{
  "sub": "1234567890",
  "name": "John Doe",
  "roles": ["ROLE_USER", "ROLE_ADMIN"],
  "exp": 1718928000
}
```

##### 3. Signature
The signature is used to verify that the sender of the JWT is who it claims to be and to ensure that the message wasn''t altered along the way. To create the signature, the Base64URL-encoded header, Base64URL-encoded payload, and a secret are passed through the specified algorithm.
```javascript
// Signature generation pseudo-code for HS256:
HMACSHA256(
  base64UrlEncode(header) + "." +
  base64UrlEncode(payload),
  secret
)
```', 'Một JWT được cấu thành từ ba phần, phân tách bởi dấu chấm (`.`):

##### 1. Header (Phần đầu)
Header thường gồm hai phần chính: loại token (mặc định là `JWT`) và thuật toán ký được sử dụng (ví dụ: `HS256` hoặc `RS256`).
```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```

##### 2. Payload (Phần thân chứa dữ liệu)
Payload chứa các **claims** (tuyên bố/thông tin). Claims là thông tin về đối tượng xác thực (thường là người dùng) và siêu dữ liệu bổ sung. Có ba loại claims:
* **Registered claims**: Các thông tin chuẩn đã được định nghĩa trước (ví dụ: `iss` - nhà phát hành, `exp` - thời gian hết hạn, `sub` - chủ thể, `aud` - đối tượng sử dụng).
* **Public claims**: Do người dùng tự định nghĩa nhưng cần tránh xung đột tên.
* **Private claims**: Các claims tự chọn được thiết lập để truyền tải thông tin nội bộ (ví dụ: `roles`, `userId`).
```json
{
  "sub": "1234567890",
  "name": "John Doe",
  "roles": ["ROLE_USER", "ROLE_ADMIN"],
  "exp": 1718928000
}
```

##### 3. Signature (Phần chữ ký)
Chữ ký được sử dụng để xác minh người gửi JWT là hợp lệ và đảm bảo thông điệp không bị thay đổi trên đường đi. Để tạo chữ ký, phần header mã hóa Base64URL, payload mã hóa Base64URL và một khóa bí mật (secret) sẽ được đưa vào thuật toán ký đã chỉ định.
```javascript
// Mã giả tạo chữ ký HS256:
HMACSHA256(
  base64UrlEncode(header) + "." +
  base64UrlEncode(payload),
  secret
)
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-118', 'JWT', 'JWT', 'Mid', 'What is the difference between signing and encrypting a JWT?', 'Sự khác biệt giữa việc ký (signing) và mã hóa (encrypting) một JWT là gì?', 'The primary difference lies in **data visibility (confidentiality)** vs. **data integrity (authenticity)**.

| Feature | Signed JWT (JWS - JSON Web Signature) | Encrypted JWT (JWE - JSON Web Encryption) |
| :--- | :--- | :--- |
| **Core Goal** | Guarantees **Integrity** and **Authenticity**. | Guarantees **Confidentiality**, **Integrity**, and **Authenticity**. |
| **Visibility** | Payload is only Base64URL-encoded. **Anyone can read the payload** by decoding it. | Payload is encrypted. **Only parties holding the key can read the payload**. |
| **Spec** | Implements RFC 7515 (JWS). | Implements RFC 7516 (JWE). |
| **Performance** | Computationally lightweight (fast to sign and verify). | Computationally heavier (slower due to symmetric/asymmetric encryption algorithms). |
| **Use Case** | Standard authentication where public claims (like roles, username) are safe to show. | Storing sensitive information (e.g., PII, medical/financial records) that must remain hidden. |

##### Key Takeaway:
* **Signing** a token does not hide the data; it simply ensures that if the data is tampered with, the signature will mismatch, making the token invalid.
* **Encrypting** a token hides the payload completely from third parties.', 'Sự khác biệt cốt lõi nằm ở **khả năng hiển thị dữ liệu (tính bảo mật)** so với **tính toàn vẹn dữ liệu (tính xác thực)**.

| Tiêu chí | Signed JWT (JWS - JSON Web Signature) | Encrypted JWT (JWE - JSON Web Encryption) |
| :--- | :--- | :--- |
| **Mục tiêu chính** | Đảm bảo **Tính toàn vẹn (Integrity)** và **Tính xác thực (Authenticity)**. | Đảm bảo **Tính bảo mật (Confidentiality)**, **Tính toàn vẹn** và **Tính xác thực**. |
| **Khả năng đọc dữ liệu** | Payload chỉ được mã hóa Base64URL. **Bất kỳ ai cũng có thể đọc** nội dung payload bằng cách giải mã Base64URL. | Payload được mã hóa hoàn toàn. **Chỉ những bên sở hữu khóa giải mã mới đọc được payload**. |
| **Tiêu chuẩn** | Thực thi theo RFC 7515 (JWS). | Thực thi theo RFC 7516 (JWE). |
| **Hiệu năng** | Tốn ít tài nguyên tính toán (tốc độ ký và xác thực nhanh). | Nặng hơn về mặt tính toán (chậm hơn do chạy các thuật toán mã hóa đối xứng/bất đối xứng). |
| **Trường hợp sử dụng** | Xác thực tiêu chuẩn nơi các claims thông thường (như roles, username) không cần ẩn đi. | Lưu trữ dữ liệu nhạy cảm (như thông tin cá nhân PII, hồ sơ y tế/tài chính) cần được che giấu tuyệt đối. |

##### Kết luận quan trọng:
* **Ký (Signing)** token không che giấu dữ liệu; nó chỉ đảm bảo rằng nếu dữ liệu bị thay đổi, chữ ký sẽ không khớp và token sẽ mất hiệu lực.
* **Mã hóa (Encrypting)** token ẩn hoàn toàn nội dung payload khỏi các bên thứ ba.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-119', 'JWT', 'JWT', 'Mid', 'How is a JWT typically used for authentication?', 'JWT thường được sử dụng như thế nào để xác thực?', 'JWT-based authentication is typically implemented using a stateless, bearer-token mechanism:

```
Step 1: POST /api/login -> Send username & password.
Step 2: Server validates credentials -> Generates JWT -> Returns JWT in response body.
Step 3: Client stores JWT -> (e.g., in memory or secure storage).
Step 4: Client makes request -> Attaches Header "Authorization: Bearer <token>".
Step 5: Server interceptor/filter intercept -> Validates Signature & Expiration -> Authorizes request.
```

##### 1. Generation
Upon successful authentication, the server generates a JWT containing standard claims (like `sub`, `exp`, `iss`) and custom claims (like user privileges). It signs the JWT using a private key or shared secret.

##### 2. Storage & Transmission
The client receives the token and stores it. For secure web applications, storing the JWT in memory (JavaScript variable) is the most secure against XSS, while utilizing `HttpOnly`, `Secure` cookies with `SameSite=Lax` mitigates both XSS and CSRF.

##### 3. Request Interception (Spring Security Example)
In Java/Spring Security, a custom filter parses the `Authorization` header on incoming requests:
```java
import jakarta.servlet.FilterChain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

public class JwtAuthenticationFilter extends OncePerRequestFilter {
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) 
            throws java.io.IOException, jakarta.servlet.ServletException {
        String authHeader = request.getHeader("Authorization");
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            String token = authHeader.substring(7);
            if (JwtUtils.validateToken(token)) {
                String username = JwtUtils.getUsernameFromToken(token);
                var authorities = JwtUtils.getAuthoritiesFromToken(token);
                var authentication = new UsernamePasswordAuthenticationToken(username, null, authorities);
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
        }
        filterChain.doFilter(request, response);
    }
}
```', 'Xác thực dựa trên JWT thường được triển khai thông qua cơ chế không lưu trạng thái (stateless) sử dụng bearer token:

```
Bước 1: POST /api/login -> Gửi tài khoản & mật khẩu.
Bước 2: Server kiểm tra thông tin -> Tạo JWT -> Trả lại JWT trong response body.
Bước 3: Client lưu trữ JWT -> (ví dụ: trong bộ nhớ ứng dụng hoặc secure storage).
Bước 4: Client gửi yêu cầu -> Đính kèm Header "Authorization: Bearer <token>".
Bước 5: Server interceptor/filter chặn request -> Kiểm tra Chữ ký & Hạn dùng -> Cấp quyền thực hiện request.
```

##### 1. Khởi tạo (Generation)
Sau khi đăng nhập thành công, máy chủ tạo ra một JWT chứa các claims chuẩn (như `sub`, `exp`, `iss`) và các claims tùy chỉnh (như quyền hạn người dùng). Máy chủ ký JWT bằng khóa private hoặc một khóa bí mật chung (shared secret).

##### 2. Lưu trữ & Truyền tải
Client nhận token và lưu trữ. Đối với các ứng dụng web, lưu trữ JWT trong bộ nhớ (JavaScript variable) là an toàn nhất trước lỗ hổng XSS, trong khi sử dụng cookie có thuộc tính `HttpOnly`, `Secure` kết hợp `SameSite=Lax` sẽ giảm thiểu tối đa cả XSS lẫn CSRF.

##### 3. Đánh chặn yêu cầu (Ví dụ cấu hình Spring Security Filter)
Trong Java/Spring Security, một filter tùy chỉnh sẽ phân tích header `Authorization` trên các request gửi đến để xác thực như sau:
```java
import jakarta.servlet.FilterChain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

public class JwtAuthenticationFilter extends OncePerRequestFilter {
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) 
            throws java.io.IOException, jakarta.servlet.ServletException {
        String authHeader = request.getHeader("Authorization");
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            String token = authHeader.substring(7);
            if (JwtUtils.validateToken(token)) {
                String username = JwtUtils.getUsernameFromToken(token);
                var authorities = JwtUtils.getAuthoritiesFromToken(token);
                var authentication = new UsernamePasswordAuthenticationToken(username, null, authorities);
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
        }
        filterChain.doFilter(request, response);
    }
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-120', 'JWT', 'JWT', 'Mid', 'What information should and should not be stored inside a JWT?', 'Những thông tin nào nên và không nên được lưu trữ bên trong một JWT?', 'Because a standard signed JWT is **not encrypted**, the payload claims can be easily decoded by anyone who intercepts the token. Thus, security practices mandate careful consideration of what goes inside.

##### What SHOULD be stored inside a JWT:
* **Non-sensitive Identifiers**: Unique database user ID (e.g., `userId` or UUID) or username (`sub`).
* **Metadata & Lifespan**: Expiration timestamp (`exp`), Issued At (`iat`), and token ID (`jti`) to prevent replay attacks.
* **Roles / Permissions**: Granted authorities (e.g., `roles: ["ROLE_ADMIN", "ROLE_USER"]`) to enable instantaneous authorization checks without querying database stores.
* **Tenant/Client Identifier**: Information like `tenantId` in a multi-tenant system to guide routing.

##### What SHOULD NOT be stored inside a JWT:
* **Passwords or Hashes**: Plaintext passwords, bcrypt hashes, or security credentials.
* **Personally Identifiable Information (PII)**: Social Security Numbers, phone numbers, home addresses, or credit card details.
* **Sensitive Secrets**: Database credentials, private API keys, or internal routing architectures.
* **Large Payloads**: Storing extensive user profiles, session histories, or massive JSON objects. Large tokens bloat network request headers, degrading performance.', 'Bởi vì một JWT ký chuẩn (signed JWT) **không được mã hóa**, bất kỳ ai chặn được token này đều có thể giải mã và đọc được toàn bộ nội dung payload. Vì vậy, các quy tắc bảo mật đòi hỏi phải cân nhắc kỹ lượng dữ liệu đưa vào.

##### Những thông tin NÊN lưu trữ trong JWT:
* **Mã định danh không nhạy cảm**: ID người dùng trong database (như `userId` hoặc UUID) hoặc tên đăng nhập (`sub`).
* **Siêu dữ liệu & Vòng đời**: Thời gian hết hạn (`exp`), thời điểm phát hành (`iat`), và ID token (`jti`) nhằm ngăn chặn tấn công replay.
* **Vai trò / Quyền hạn (Roles/Permissions)**: Danh sách các quyền được cấp (ví dụ: `roles: ["ROLE_ADMIN", "ROLE_USER"]`) giúp phân quyền tức thời mà không cần truy cập cơ sở dữ liệu.
* **Định danh Tenant/Client**: Các thông tin như `tenantId` trong hệ thống multi-tenant để hỗ trợ điều hướng dữ liệu.

##### Những thông tin KHÔNG NÊN lưu trữ trong JWT:
* **Mật khẩu hoặc mã băm mật khẩu**: Tuyệt đối không lưu mật khẩu dạng plaintext hay các chuỗi hash mật khẩu.
* **Thông tin cá nhân nhạy cảm (PII)**: Số căn cước, số điện thoại, địa chỉ nhà riêng, hay thông tin thẻ tín dụng.
* **Bí mật hệ thống**: Thông tin kết nối CSDL, API key nội bộ, hay cấu trúc định tuyến hệ thống.
* **Dữ liệu kích thước lớn**: Tránh lưu trữ toàn bộ hồ sơ người dùng hoặc lịch sử phiên làm việc phức tạp. Token quá lớn sẽ làm tăng dung lượng HTTP Header, gây ảnh hưởng tiêu cực đến hiệu năng mạng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-121', 'JWT', 'JWT', 'Mid', 'What is the difference between an access token and a refresh token?', 'Sự khác biệt giữa access token và refresh token là gì?', 'In modern token-based authentication (such as OAuth 2.0 or OIDC), access tokens and refresh tokens work in tandem to balance security and user convenience.

| Metric | Access Token | Refresh Token |
| :--- | :--- | :--- |
| **Purpose** | Used to authenticate and authorize requests to access protected resource APIs. | Used to request a new Access Token without requiring the user to re-enter credentials. |
| **Lifespan** | **Short-lived** (typically 15 minutes to 1 hour). | **Long-lived** (typically days, weeks, or months). |
| **Exposure** | Exposed to APIs during every single HTTP request. High risk of interception. | Kept secure; sent only to the Authorization Server, and only when the access token expires. |
| **Storage (Web Client)** | Ideally stored in application memory to minimize XSS risk. | Stored in a secure, `HttpOnly`, `Secure` cookie, or secure database on the server. |
| **Revocation** | Difficult to revoke because validation is usually stateless. | Easy to revoke; the Authorization Server stores refresh token states to blacklist them. |

##### Workflow:
```
1. Client makes API call -> Access Token expired.
2. Client sends Refresh Token to Auth Server (/oauth/token).
3. Auth Server validates Refresh Token (checks against database/whitelist).
4. Auth Server issues new Access Token (and optionally rotating the Refresh Token).
```', 'Trong hệ thống xác thực dựa trên token hiện đại (như OAuth 2.0 hay OIDC), access token và refresh token phối hợp chặt chẽ với nhau để cân bằng giữa bảo mật và trải nghiệm người dùng.

| Tiêu chí | Access Token | Refresh Token |
| :--- | :--- | :--- |
| **Mục đích** | Dùng để xác thực và cấp quyền cho các request truy cập vào API tài nguyên bị bảo vệ. | Dùng để yêu cầu cấp một Access Token mới mà không bắt người dùng phải nhập lại tài khoản/mật khẩu. |
| **Vòng đời (Lifespan)** | **Ngắn** (thường từ 15 phút đến 1 giờ). | **Dài** (thường tính bằng ngày, tuần, hoặc tháng). |
| **Tần suất sử dụng** | Xuất hiện liên tục trong mọi request HTTP gửi lên API. Nguy cơ bị đánh chặn cao. | Chỉ gửi đi khi Access Token đã hết hạn và gửi trực tiếp đến Server xác thực. |
| **Lưu trữ phía Client** | Thường được lưu trữ trong bộ nhớ RAM (JavaScript state) của ứng dụng để tránh lỗi XSS. | Được lưu trữ an toàn trong cookie có thuộc tính `HttpOnly`, `Secure` hoặc lưu ở DB phía server. |
| **Khả năng thu hồi (Revocation)** | Rất khó thu hồi tức thời do quá trình xác thực thường diễn ra stateless. | Dễ dàng thu hồi; Auth Server thường lưu danh sách Refresh Token hoạt động để hủy kích hoạt khi cần. |

##### Quy trình hoạt động:
```
1. Client gọi API -> Nhận thông báo Access Token đã hết hạn.
2. Client gửi Refresh Token đến Auth Server (/oauth/token).
3. Auth Server kiểm tra Refresh Token (xem có nằm trong blacklist hoặc hết hạn không).
4. Auth Server phát hành Access Token mới (và có thể xoay vòng Refresh Token mới).
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-122', 'OAuth 2.0', 'OAuth 2.0', 'Mid', 'How should expired access tokens be handled?', 'Nên xử lý các access token đã hết hạn như thế nào?', 'Handling expired access tokens involves coordination between the client, resource server, and authorization server:

### 1. Resource Server (API Gateway / Backend Services) Handling
- **Validation**: When a request arrives, the resource server verifies the token''s signature, structure, and expiration claim (`exp`).
- **Failure Response**: If the token is expired, the server must reject the request immediately and return an **HTTP 401 Unauthorized** status.
- **Headers**: It should include a standard `WWW-Authenticate` header to inform the client of the specific error, for example:
  ```http
  WWW-Authenticate: Bearer error="invalid_token", error_description="The access token expired"
  ```

### 2. Client-Side (Frontend / Mobile App) Handling
- **Interception**: The client should intercept HTTP 401 response codes in a centralized place (e.g., using an Axios interceptor in JavaScript or a custom client filter in Spring Boot).
- **Token Refresh**: If a **Refresh Token** is available and stored securely, the client makes a POST request to the Authorization Server''s token endpoint to exchange the refresh token for a new access token:
  ```http
  POST /oauth/token HTTP/1.1
  Host: authorization-server.com
  Content-Type: application/x-www-form-urlencoded

  grant_type=refresh_token&
  refresh_token=rT4b859...&
  client_id=your-client-id
  ```
- **Retry Mechanism**: Upon obtaining a new access token, the client updates its storage (e.g., cookie or state), updates the request headers, and automatically retries the originally failed API request.
- **Session Expiry**: If the refresh token is missing, expired, or revoked, the client must clear all local session storage and redirect the user to the login screen.

### 3. Authorization Server Handling
- **Refresh Token Validation**: The server validates the incoming refresh token against its store or cryptographically (if JWT). It verifies that it has not expired or been blacklisted.
- **Refresh Token Rotation (RTR)**: To prevent replay attacks, the authorization server can issue a new refresh token along with the new access token and invalidate the old refresh token. If the old refresh token is reused, the server should detect this as a breach and invalidate all active tokens for that user session.', 'Xử lý access token hết hạn đòi hỏi sự phối hợp nhịp nhàng giữa client, resource server và authorization server:

### 1. Phía Resource Server (API Gateway / Backend Services)
- **Xác thực**: Khi nhận yêu cầu, resource server kiểm tra chữ ký, cấu trúc và thời gian hết hạn (`exp`) của token.
- **Phản hồi lỗi**: Nếu token hết hạn, server phải từ chối yêu cầu ngay lập tức và trả về mã trạng thái **HTTP 401 Unauthorized**.
- **Header tiêu chuẩn**: Nên gửi kèm header `WWW-Authenticate` để cung cấp thông tin chi tiết về lỗi cho client, ví dụ:
  ```http
  WWW-Authenticate: Bearer error="invalid_token", error_description="The access token expired"
  ```

### 2. Phía Client (Frontend / Mobile App)
- **Bộ chặn lỗi (Interceptor)**: Client nên thiết lập một bộ chặn lỗi tập trung (ví dụ: Axios interceptor trong JS hoặc filter trong Spring) để theo dõi các phản hồi HTTP 401.
- **Làm mới Token (Token Refresh)**: Nếu có **Refresh Token** và được lưu trữ an toàn, client gửi yêu cầu POST đến endpoint cấp token của Authorization Server để đổi lấy access token mới:
  ```http
  POST /oauth/token HTTP/1.1
  Host: authorization-server.com
  Content-Type: application/x-www-form-urlencoded

  grant_type=refresh_token&
  refresh_token=rT4b859...&
  client_id=your-client-id
  ```
- **Thực hiện lại yêu cầu**: Khi nhận được access token mới, client cập nhật bộ nhớ (cookie hoặc state), thay thế token trong header và tự động thực hiện lại yêu cầu API bị lỗi lúc trước.
- **Hết hạn phiên**: Nếu không có refresh token, hoặc refresh token đã hết hạn/bị vô hiệu hóa, client phải xóa sạch dữ liệu phiên làm việc cục bộ và điều hướng người dùng về trang đăng nhập.

### 3. Phía Authorization Server
- **Xác thực Refresh Token**: Kiểm tra tính hợp lệ của refresh token trong database (hoặc giải mã nếu là JWT) để đảm bảo chưa hết hạn hoặc chưa bị thu hồi.
- **Xoay vòng Refresh Token (Refresh Token Rotation)**: Để tăng tính bảo mật, mỗi lần đổi token, server nên cấp một refresh token mới cùng với access token mới và hủy refresh token cũ. Nếu phát hiện refresh token cũ được sử dụng lại, server coi đó là một vụ tấn công và lập tức vô hiệu hóa toàn bộ các token đang hoạt động của phiên đó.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-123', 'JWT', 'JWT', 'Mid', 'What are common security risks when using JWT?', 'Những rủi ro bảo mật phổ biến khi sử dụng JWT là gì?', 'JSON Web Tokens (JWTs) are popular for stateless authentication but present several critical security risks if misconfigured:

### 1. Algorithm Confusion / None Algorithm Attack
- **The `none` Algorithm**: Early libraries allowed a token to specify `"alg": "none"` in the header. An attacker could tamper with the payload, change the algorithm to `none`, remove the signature, and the server would accept the token as valid. Modern libraries disable this by default, but it must be verified.
- **Key Confusion (HS256 vs RS256)**: If a server expects asymmetric signing (RS256) but accepts a token signed with symmetric HMAC (HS256), an attacker can sign the token using the server''s public key (which is often publicly available) as the shared secret. When the server attempts validation, it uses the public key to verify the HS256 signature, which succeeds.

### 2. Weak Signing Secrets
- If using HS256, the signature security depends entirely on the secrecy and entropy of the secret key. If a weak string is used (e.g., `secret123`), attackers can capture the JWT and perform offline brute-force attacks using tools like Hashcat or John the Ripper to extract the key.

### 3. Token Leakage and Improper Storage
- **XSS (Cross-Site Scripting)**: Storing JWTs in `localStorage` or `sessionStorage` makes them accessible to malicious scripts running on the page. Attackers can steal the token using injected JavaScript.
- **CSRF (Cross-Site Request Forgery)**: Storing tokens in standard cookies makes them susceptible to CSRF unless protected via `SameSite` flags and anti-CSRF tokens. The best practice is storing them in `HttpOnly`, `Secure`, `SameSite=Strict` cookies.

### 4. Stateless Invalidation Challenges
- Since JWT validation is stateless, a token remains valid until its expiration (`exp`). If a user logs out, or a token is compromised, the server cannot natively revoke the token. Mitigation requires implementing a database-backed denylist (e.g., using Redis) to track blacklisted tokens, which reintroduces some statefulness.

### 5. Sensitive Data Exposure in Payload
- The payload of a JWT is Base64Url encoded, **not encrypted**. Anyone who intercepts the token can decode it and read the data. Storing sensitive data like passwords, PII, or internal database IDs exposes this data directly to exposure.', 'JSON Web Tokens (JWT) rất phổ biến trong xác thực stateless nhưng tồn tại một số rủi ro bảo mật nghiêm trọng nếu cấu hình không đúng cách:

### 1. Lỗi thuật toán (Algorithm Confusion / Tấn công thuật toán None)
- **Thuật toán `none`**: Một số thư viện cũ cho phép chỉ định thuật toán `"alg": "none"` trong header. Kẻ tấn công có thể sửa payload, đổi thuật toán thành `none`, xóa chữ ký và server vẫn chấp nhận token này là hợp lệ. Các thư viện hiện đại đã tắt tính năng này theo mặc định.
- **Tráo đổi thuật toán (HS256 vs RS256)**: Nếu server thiết lập xác thực bất đối xứng (RS256) nhưng chấp nhận cả HS256, kẻ tấn công có thể ký token bằng thuật toán đối xứng (HS256) bằng cách dùng chính khóa công khai (public key - vốn công khai) của server làm khóa bí mật. Khi kiểm tra, server dùng public key để xác minh chữ ký HS256 và xác thực thành công.

### 2. Khóa bí mật yếu (Weak Signing Secrets)
- Khi dùng HS256, độ an toàn của chữ ký phụ thuộc hoàn toàn vào độ phức tạp của khóa bí mật. Nếu dùng khóa yếu (ví dụ: `secret123`), kẻ tấn công có thể lấy token và thực hiện dò tìm (brute-force) ngoại tuyến bằng các công cụ như Hashcat để tìm ra khóa.

### 3. Rò rỉ Token và lưu trữ sai cách
- **Tấn công XSS**: Lưu trữ JWT trong `localStorage` hoặc `sessionStorage` khiến chúng dễ bị lấy cắp bởi các mã độc JavaScript chạy trên trang.
- **Tấn công CSRF**: Lưu trữ JWT trong cookie thông thường dễ bị tấn công CSRF nếu không có cờ `SameSite` và token chống CSRF. Giải pháp an toàn nhất là lưu trữ JWT trong cookie cấu hình `HttpOnly`, `Secure`, và `SameSite=Strict`.

### 4. Khó khăn trong việc thu hồi (Stateless Invalidation)
- Do JWT được xác thực stateless (không trạng thái), token sẽ luôn hợp lệ cho đến khi hết hạn (`exp`). Nếu người dùng đăng xuất hoặc token bị rò rỉ, server không có cách nào thu hồi ngay lập tức ngoại trừ việc triển khai danh sách đen (denylist) lưu trong database/Redis, điều này làm giảm bớt ưu điểm stateless ban đầu.

### 5. Lộ thông tin nhạy cảm ở Payload
- Phần payload của JWT chỉ được mã hóa Base64Url chứ **không hề được mã hóa bảo mật (encrypted)**. Bất kỳ ai chặn được token đều có thể giải mã và đọc thông tin bên trong. Lưu các dữ liệu nhạy cảm như mật khẩu hay thông tin cá nhân (PII) vào đây là cực kỳ nguy hiểm.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-124', 'OAuth 2.0', 'OAuth 2.0', 'Junior', 'What is OAuth 2.0?', 'OAuth 2.0 là gì?', 'OAuth 2.0 (Open Authorization) is an industry-standard **authorization framework** (specifically defined in RFC 6749) that enables applications to obtain limited access to user accounts on an HTTP service, such as Google, GitHub, or Facebook.

### Key Characteristics of OAuth 2.0:
1. **Delegation Framework**: It delegates authorization from the user (resource owner) to the client application. The client requests access to resources on behalf of the user.
2. **Token-Based**: Instead of requiring the user to share their credentials (username and password) directly with the client application, OAuth 2.0 uses **Access Tokens** to authorize requests.
3. **Scopes**: It allows users to grant specific, granular permissions (e.g., read-only access to calendar events) instead of full access to their account.
4. **Separation of Concerns**: It separates the roles of the client application, the resource owner, the server containing the data (Resource Server), and the server managing access (Authorization Server).', 'OAuth 2.0 (Open Authorization) là một **khung ủy quyền (authorization framework)** tiêu chuẩn công nghiệp (được định nghĩa cụ thể trong RFC 6749) cho phép các ứng dụng có được quyền truy cập giới hạn vào tài khoản người dùng trên các dịch vụ HTTP như Google, GitHub hoặc Facebook.

### Các đặc điểm chính của OAuth 2.0:
1. **Khung ủy quyền (Delegation Framework)**: Nó ủy quyền truy cập từ người dùng (resource owner) cho ứng dụng client. Client sẽ thay mặt người dùng để truy cập vào tài nguyên.
2. **Dựa trên Token (Token-Based)**: Thay vì yêu cầu người dùng chia sẻ trực tiếp thông tin đăng nhập (tên đăng nhập và mật khẩu) cho client, OAuth 2.0 sử dụng các **Access Token** để xác thực các yêu cầu.
3. **Phạm vi truy cập (Scopes)**: Cho phép người dùng cấp quyền truy cập cụ thể và chi tiết (ví dụ: chỉ đọc sự kiện lịch) thay vì cấp toàn quyền truy cập tài khoản.
4. **Tách biệt vai trò**: Phân định rõ ràng vai trò của ứng dụng client, chủ tài sản (Resource Owner), máy chủ chứa dữ liệu (Resource Server) và máy chủ quản lý quyền truy cập (Authorization Server).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-125', 'OAuth 2.0', 'OAuth 2.0', 'Junior', 'What problem does OAuth 2.0 solve?', 'OAuth 2.0 giải quyết vấn đề gì?', 'Before OAuth 2.0, if a third-party application needed to access data on another service (for instance, a photo printing service trying to access photos stored on Google Drive), the user had to give their Google credentials directly to the third-party application.

This created several critical security issues, which OAuth 2.0 solves:

1. **Credential Exposure**: Third-party applications had to store the user''s cleartext password. If the application was compromised, the user''s password was leaked.
2. **Over-privileged Access**: The third-party application had full access to the user''s entire account, including sensitive actions (e.g., deleting emails or files), because it possessed the password.
3. **Lack of Revocation Control**: The only way for a user to revoke access to a specific application was to change their main password, which revoked access for all other applications and forced them to re-authenticate everywhere.
4. **No Standard Protocol**: Every service used custom APIs for resource sharing, making integrations complex and prone to security flaws.

**How OAuth 2.0 Solves It**: It introduces an intermediate token layer. The user authenticates with the identity provider directly and consents to specific scopes. The identity provider issues a **restricted access token** to the client application. The client only uses the token to fetch data, never seeing the user''s password.', 'Trước khi có OAuth 2.0, nếu một ứng dụng bên thứ ba muốn truy cập dữ liệu trên một dịch vụ khác (ví dụ: một ứng dụng in ảnh muốn lấy ảnh lưu trên Google Drive), người dùng buộc phải cung cấp thông tin tài khoản Google của họ trực tiếp cho ứng dụng in ảnh này.

Việc này dẫn đến nhiều vấn đề bảo mật nghiêm trọng mà OAuth 2.0 đã giải quyết:

1. **Tiết lộ thông tin đăng nhập**: Ứng dụng bên thứ ba phải lưu trữ mật khẩu văn bản thô của người dùng. Nếu ứng dụng này bị hack, mật khẩu của người dùng sẽ bị lộ.
2. **Quyền truy cập quá rộng**: Ứng dụng bên thứ ba có toàn quyền kiểm soát tài khoản người dùng (bao gồm cả các hành động nguy hiểm như xóa email hay file) vì nó nắm giữ mật khẩu.
3. **Không thể thu hồi quyền linh hoạt**: Cách duy nhất để người dùng thu hồi quyền của một ứng dụng là đổi mật khẩu chính, điều này làm mất liên kết của tất cả ứng dụng khác và buộc người dùng phải đăng nhập lại từ đầu ở mọi nơi.
4. **Thiếu tiêu chuẩn thống nhất**: Mỗi dịch vụ tự xây dựng API chia sẻ tài nguyên riêng, làm cho việc tích hợp phức tạp và dễ phát sinh lỗi bảo mật.

**OAuth 2.0 giải quyết thế nào**: Nó đưa vào lớp trung gian sử dụng token. Người dùng đăng nhập trực tiếp với nhà cung cấp danh tính và chấp thuận các phạm vi truy cập cụ thể. Nhà cung cấp danh tính sẽ cấp **access token bị giới hạn quyền** cho ứng dụng client. Client chỉ sử dụng token để lấy dữ liệu mà không bao giờ biết mật khẩu của người dùng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-126', 'OAuth 2.0', 'OAuth 2.0', 'Junior', 'What are the roles of resource owner, client, authorization server, and resource server?', 'Vai trò của resource owner, client, authorization server, và resource server là gì?', 'OAuth 2.0 defines four distinct roles to separate responsibilities in the authorization flow:

### 1. Resource Owner
- **Definition**: The entity capable of granting access to a protected resource.
- **Example**: The end-user (you) who owns the data stored on Google Drive or Facebook.

### 2. Client
- **Definition**: An application making protected resource requests on behalf of the resource owner and with its authorization.
- **Example**: A web application or mobile app (e.g., a photo-editing app) that needs to access your photos on Google Drive.

### 3. Resource Server
- **Definition**: The server hosting the protected resources, capable of accepting and responding to protected resource requests using access tokens.
- **Example**: Google Photos API or Google Drive API server. It validates the incoming access token and returns the requested resources.

### 4. Authorization Server
- **Definition**: The server issuing access tokens to the client after successfully authenticating the resource owner and obtaining authorization.
- **Example**: Google Accounts/OAuth system. It handles user authentication, presents the consent screen, and generates tokens.', 'OAuth 2.0 định nghĩa bốn vai trò riêng biệt nhằm tách biệt trách nhiệm trong luồng ủy quyền:

### 1. Resource Owner (Chủ sở hữu tài nguyên)
- **Định nghĩa**: Thực thể có quyền cấp quyền truy cập vào tài nguyên được bảo vệ.
- **Ví dụ**: Người dùng cuối (chính bạn), người sở hữu dữ liệu lưu trên Google Drive hoặc Facebook.

### 2. Client (Ứng dụng khách)
- **Định nghĩa**: Ứng dụng thực hiện yêu cầu tài nguyên được bảo vệ thay mặt cho Resource Owner dưới sự ủy quyền của họ.
- **Ví dụ**: Ứng dụng web hoặc ứng dụng di động (ví dụ: ứng dụng chỉnh sửa ảnh) muốn truy cập ảnh trên Google Drive của bạn.

### 3. Resource Server (Máy chủ tài nguyên)
- **Định nghĩa**: Máy chủ lưu trữ tài nguyên được bảo vệ, tiếp nhận và phản hồi các yêu cầu truy cập tài nguyên bằng cách sử dụng access token.
- **Ví dụ**: Máy chủ API của Google Photos hoặc Google Drive. Server này kiểm tra tính hợp lệ của access token và trả về tài nguyên tương ứng.

### 4. Authorization Server (Máy chủ ủy quyền)
- **Định nghĩa**: Máy chủ cấp access token cho client sau khi xác thực thành công Resource Owner và nhận được sự đồng ý.
- **Ví dụ**: Hệ thống tài khoản/OAuth của Google. Nó đảm nhận việc xác thực người dùng, hiển thị màn hình đồng ý cấp quyền và sinh các mã token.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-127', 'OAuth 2.0', 'OAuth 2.0', 'Mid', 'What is the authorization code flow?', 'Authorization code flow là gì?', 'The **Authorization Code Flow** is the most common and secure OAuth 2.0 grant type. It is designed for **confidential clients** (applications running on a secure server, like Spring Boot, Node.js, or ASP.NET backends) because it keeps the critical client secret protected from exposure on the user''s browser.

### Steps in the Authorization Code Flow:
1. **Directing to Authorization Server**: The client redirects the user to the Authorization Server''s authorization endpoint, passing `response_type=code`, `client_id`, `redirect_uri`, `scope`, and a unique random `state` parameter.
2. **Authentication & Consent**: The user authenticates with the Authorization Server (if not already logged in) and reviews the consent screen showing requested permissions.
3. **Code Delivery**: Once approved, the Authorization Server redirects the user back to the client''s `redirect_uri`, appending a temporary **Authorization Code** and the `state` parameter in the query string.
4. **Back-Channel Token Exchange**: The client web server extracts the Authorization Code, validates the `state` parameter to prevent CSRF, and makes a direct server-to-server POST request to the token endpoint. This request contains the authorization code, the `client_id`, the `client_secret`, and the `redirect_uri`.
5. **Token Issuance**: The Authorization Server validates the code and the client secret, then responds with an **Access Token** (and optionally a **Refresh Token**).

### Security Extension: PKCE
For public clients (like Single Page Applications or Mobile Apps) that cannot securely store a `client_secret`, the flow is modified using **PKCE (Proof Key for Code Exchange)**. Instead of a secret, it uses a dynamically generated cryptographic key pair (code verifier and code challenge) to prevent interception of the authorization code.', '**Authorization Code Flow** là luồng cấp quyền (grant type) phổ biến và an toàn nhất trong OAuth 2.0. Nó được thiết kế dành cho các **confidential client** (các ứng dụng chạy trên server bảo mật như Spring Boot, Node.js, hay ASP.NET backend) vì nó giúp giữ kín client secret, tránh bị lộ trên trình duyệt người dùng.

### Các bước thực hiện trong Authorization Code Flow:
1. **Chuyển hướng đến Server Ủy quyền**: Client chuyển hướng người dùng đến endpoint ủy quyền của Authorization Server kèm theo các tham số: `response_type=code`, `client_id`, `redirect_uri`, `scope` và tham số ngẫu nhiên `state`.
2. **Xác thực và Đồng ý**: Người dùng đăng nhập vào Authorization Server (nếu chưa đăng nhập) và xác nhận đồng ý cấp các quyền được yêu cầu.
3. **Trả về mã ủy quyền**: Sau khi được đồng ý, Authorization Server chuyển hướng người dùng trở lại `redirect_uri` của client, đính kèm một mã ủy quyền tạm thời (**Authorization Code**) và tham số `state` trong URL.
4. **Trao đổi Token qua kênh phụ (Back-Channel)**: Server của client nhận Authorization Code, kiểm tra tham số `state` để chống CSRF, rồi gửi một yêu cầu POST trực tiếp từ server-to-server đến endpoint token. Yêu cầu này chứa mã ủy quyền, `client_id`, `client_secret` và `redirect_uri`.
5. **Cấp phát Token**: Authorization Server xác thực mã ủy quyền và client secret, sau đó phản hồi lại bằng một **Access Token** (và có thể thêm **Refresh Token**).

### Phần mở rộng bảo mật: PKCE
Đối với các client công khai (như Single Page Application hoặc Mobile App) không thể lưu trữ `client_secret` an toàn, luồng này sẽ kết hợp với **PKCE (Proof Key for Code Exchange)**. Thay vì dùng secret tĩnh, nó tạo ra cặp khóa mã hóa động (code verifier và code challenge) để ngăn chặn kẻ tấn công đánh chặn mã ủy quyền trên đường truyền.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-128', 'OpenID Connect', 'OpenID Connect', 'Mid', 'What is the difference between OAuth 2.0 and OpenID Connect?', 'Sự khác biệt giữa OAuth 2.0 và OpenID Connect là gì?', 'The core difference is that **OAuth 2.0 is designed for Authorization** (delegated access to APIs), while **OpenID Connect (OIDC) is designed for Authentication** (proving identity and user login).

Here is a detailed comparison:

| Feature | OAuth 2.0 | OpenID Connect (OIDC) |
| :--- | :--- | :--- |
| **Primary Purpose** | **Authorization** (Access delegation). Answers: *"Am I allowed to do this?"* | **Authentication** (Identity verification). Answers: *"Who are you?"* |
| **Primary Token** | **Access Token** (Opaque string or JWT intended for the Resource Server/API). | **ID Token** (Always a JWT, designed for the Client application to parse). |
| **Scope Parameter** | Uses generic scopes like `read`, `write`, `delete`. | Requires the scope `openid`. Also supports `profile`, `email`, etc. |
| **Standard Endpoints** | Defines `/authorize` and `/token` endpoints. | Adds standard `/userinfo` and discovery endpoint (`/.well-known/openid-configuration`). |
| **User Info** | Does not standardize how to get user profile details. | Standardizes the retrieval of user profile details via ID Token claims and the `/userinfo` endpoint. |

### The Analogy:
- **OAuth 2.0** is like a **hotel key card**. It gives you access to a specific room (Resource Server) but does not tell the hotel who you are.
- **OpenID Connect** is like an **identity card or passport**. It proves your identity (who you are, your name, age, profile photo) and is shown to gain entry.', 'Sự khác biệt cơ bản là **OAuth 2.0 được thiết kế cho việc Ủy quyền (Authorization)** (ủy quyền truy cập API), trong khi **OpenID Connect (OIDC) được thiết kế cho việc Xác thực (Authentication)** (chứng minh danh tính và đăng nhập người dùng).

Dưới đây là so sánh chi tiết:

| Tiêu chí | OAuth 2.0 | OpenID Connect (OIDC) |
| :--- | :--- | :--- |
| **Mục đích chính** | **Ủy quyền** (Truy cập được ủy quyền). Trả lời câu hỏi: *"Tôi có được phép thực hiện hành động này không?"* | **Xác thực** (Xác minh danh tính). Trả lời câu hỏi: *"Bạn là ai?"* |
| **Token chính** | **Access Token** (Chuỗi opaque hoặc JWT dành cho Resource Server/API kiểm tra). | **ID Token** (Luôn là JWT, chứa thông tin người dùng dành cho Client giải mã). |
| **Tham số Scope** | Sử dụng các scope tự định nghĩa như `read`, `write`, `delete`. | Bắt buộc phải có scope `openid`. Ngoài ra hỗ trợ `profile`, `email`,... |
| **Endpoint chuẩn** | Định nghĩa endpoint `/authorize` và `/token`. | Bổ sung thêm endpoint `/userinfo` và endpoint cấu hình (`/.well-known/openid-configuration`). |
| **Thông tin người dùng** | Không chuẩn hóa cách thức lấy thông tin cá nhân của người dùng. | Chuẩn hóa việc lấy thông tin người dùng qua các claim trong ID Token và endpoint `/userinfo`. |

### Hình ảnh tương tự:
- **OAuth 2.0** giống như **thẻ khóa phòng khách sạn**. Nó cho phép bạn mở khóa phòng (truy cập Resource Server) nhưng chiếc thẻ không chứa thông tin bạn là ai.
- **OpenID Connect** giống như **hộ chiếu hoặc chứng minh thư**. Nó chứng minh danh tính của bạn (bạn tên gì, bao nhiêu tuổi, ảnh chân dung) để kiểm tra lúc đi qua cửa khẩu.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-129', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is JPA?', 'JPA là gì?', 'JPA (**Java Persistence API**), renamed to **Jakarta Persistence** in modern enterprise Java, is a standard Java specification that defines how to map Java objects (POJOs) to relational database tables and manage their lifecycle.

### Key Concepts of JPA:
1. **Specification, Not Implementation**: JPA is a set of interfaces, standards, and annotations (defined under `jakarta.persistence` package). It does not contain executable code to perform database tasks; it requires a JPA provider (like Hibernate or EclipseLink) to implement these standards.
2. **Declarative Mapping**: Metadata is defined using Java annotations (or XML) directly on classes and fields to map them to database structures:
   ```java
   @Entity
   @Table(name = "users")
   public class User {
       @Id
       @GeneratedValue(strategy = GenerationType.IDENTITY)
       private Long id;
       
       @Column(name = "username", nullable = false)
       private String username;
   }
   ```
3. **Entity Manager**: The central API of JPA is the `EntityManager`, which controls persistence contexts, allowing developers to create, read, update, and delete entities (`find()`, `persist()`, `merge()`, `remove()`).
4. **JPQL (Java Persistence Query Language)**: An object-oriented query language defined by JPA that allows developers to write queries using entity and property names rather than actual database table and column names.', 'JPA (**Java Persistence API**), đã được đổi tên thành **Jakarta Persistence** trong các phiên bản Java doanh nghiệp hiện đại, là một đặc tả (specification) tiêu chuẩn của Java định nghĩa cách ánh xạ đối tượng Java (POJO) với các bảng cơ sở dữ liệu quan hệ và quản lý vòng đời của chúng.

### Các khái niệm cốt lõi của JPA:
1. **Là đặc tả, không phải thư viện triển khai**: JPA chỉ là một tập hợp các interface, tiêu chuẩn và annotation (nằm trong package `jakarta.persistence`). Nó không chứa mã nguồn thực thi trực tiếp việc truy vấn; nó cần một JPA provider (như Hibernate hoặc EclipseLink) triển khai các tiêu chuẩn này.
2. **Ánh xạ khai báo (Declarative Mapping)**: Dữ liệu cấu hình ánh xạ được định nghĩa bằng các Java annotation (hoặc XML) ngay trên các class và thuộc tính:
   ```java
   @Entity
   @Table(name = "users")
   public class User {
       @Id
       @GeneratedValue(strategy = GenerationType.IDENTITY)
       private Long id;
       
       @Column(name = "username", nullable = false)
       private String username;
   }
   ```
3. **Entity Manager**: Thành phần trung tâm của JPA là `EntityManager`, quản lý ngữ cảnh lưu trữ (persistence context) và cho phép các lập trình viên thực hiện các thao tác CRUD trên các entity (`find()`, `persist()`, `merge()`, `remove()`).
4. **JPQL (Java Persistence Query Language)**: Ngôn ngữ truy vấn hướng đối tượng được JPA định nghĩa, cho phép viết truy vấn dựa trên tên của các Entity và thuộc tính của chúng thay vì tên bảng và cột thực tế trong cơ sở dữ liệu.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-130', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is Hibernate?', 'Hibernate là gì?', '**Hibernate** is an open-source, object-relational mapping (ORM) framework for Java. It is the most popular implementation of the JPA (Jakarta Persistence) specification.

### Key Characteristics of Hibernate:
1. **JPA Provider**: Hibernate implements the interfaces defined by JPA (such as `EntityManagerFactory`, `EntityManager`, and JPQL parser) and provides the actual logic to connect to the database, generate SQL queries, and map results back to Java objects.
2. **Rich History**: Hibernate was created before the JPA specification existed. Because of this, it contains proprietary features and APIs that are not part of standard JPA (e.g., specific annotations like `@Type` or `@Formula`, custom caching strategies, and the legacy Hibernate Session API).
3. **Object-Relational Mapping (ORM)**: It automates the boilerplate JDBC code, handling connection management, transaction integration, and converting SQL result sets into Java object graphs.
4. **Built-in Performance Features**: Includes features like First-Level Cache (session-scoped), Second-Level Cache (application-scoped), Query Cache, Lazy Loading, and Batch Fetching to optimize database interactions.', '**Hibernate** là một framework ánh xạ quan hệ - đối tượng (ORM) mã nguồn mở cho Java. Nó là thư viện triển khai phổ biến và được sử dụng rộng rãi nhất của đặc tả JPA (Jakarta Persistence).

### Các đặc điểm chính của Hibernate:
1. **Nhà cung cấp JPA (JPA Provider)**: Hibernate thực hiện hóa (implement) các interface được định nghĩa bởi JPA (như `EntityManagerFactory`, `EntityManager` và bộ phân tích cú pháp JPQL), cung cấp logic thực tế để kết nối cơ sở dữ liệu, sinh câu lệnh SQL và ánh xạ kết quả ngược lại đối tượng Java.
2. **Lịch sử lâu đời**: Hibernate ra đời trước khi đặc tả JPA xuất hiện. Vì lý do này, nó chứa nhiều tính năng và API độc quyền nằm ngoài tiêu chuẩn JPA (ví dụ: các annotation như `@Type`, `@Formula`, các chiến lược cache tùy biến và Hibernate Session API truyền thống).
3. **Ánh xạ Quan hệ - Đối tượng (ORM)**: Nó tự động hóa mã nguồn boilerplate của JDBC, xử lý kết nối, tích hợp giao dịch và chuyển đổi tập kết quả SQL (Result Set) thành các đồ thị đối tượng Java.
4. **Các tính năng tối ưu hiệu năng tích hợp**: Bao gồm First-Level Cache (phạm vi session), Second-Level Cache (phạm vi application), Query Cache, Lazy Loading (tải chậm) và Batch Fetching (truy vấn theo lô) để tối ưu hóa tương tác với database.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-131', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is the difference between JPA and Hibernate?', 'Sự khác biệt giữa JPA và Hibernate là gì?', 'The relationship between JPA and Hibernate is similar to that between an **Interface** and its **Implementation**.

### Key Differences:

| Aspect | JPA (Jakarta Persistence) | Hibernate |
| :--- | :--- | :--- |
| **Nature** | **Specification**: It is a set of rules, interfaces, and guidelines defined by the community (Jakarta EE). | **Implementation (ORM Framework)**: It is a concrete library containing the actual code that executes SQL and connects to database engines. |
| **Execution** | Cannot run on its own; it has no engine. | Has a complete engine capable of performing CRUD operations and JDBC interactions. |
| **Package Names** | Uses classes from `jakarta.persistence.*` (or older `javax.persistence.*`). | Uses classes from `org.hibernate.*` (along with JPA classes). |
| **Core Interfaces** | Defines `EntityManagerFactory`, `EntityManager`, and `EntityTransaction`. | Implements JPA interfaces, representing them internally as `SessionFactory`, `Session`, and `Transaction` respectively. |
| **Features** | Contains only standardized features agreed upon by the JCP/Jakarta committee. | Contains additional proprietary features not in JPA (e.g., `@Formula`, `@Filter`, custom cache providers, Criteria API). |

### Best Practice:
It is highly recommended to code against JPA interfaces (`EntityManager`) rather than Hibernate classes directly. This ensures portability, allowing you to swap Hibernate for another JPA implementation (like EclipseLink) in the future without modifying your codebase.', 'Mối quan hệ giữa JPA và Hibernate tương tự như mối quan hệ giữa một **Interface** và một **Lớp triển khai (Implementation)** của nó.

### Các điểm khác biệt chính:

| Tiêu chí | JPA (Jakarta Persistence) | Hibernate |
| :--- | :--- | :--- |
| **Bản chất** | **Đặc tả (Specification)**: Là một tập hợp các quy tắc, interface và hướng dẫn được định nghĩa bởi cộng đồng Java (Jakarta EE). | **Thư viện triển khai (ORM Framework)**: Là một thư viện cụ thể chứa mã nguồn thực thi thực tế để sinh câu lệnh SQL và kết nối database. |
| **Thực thi** | Không thể tự chạy độc lập vì không chứa bộ máy (engine) thực thi. | Sở hữu bộ máy hoàn chỉnh để thực hiện các thao tác CRUD và tương tác JDBC. |
| **Package** | Sử dụng các class thuộc package `jakarta.persistence.*` (hoặc trước đây là `javax.persistence.*`). | Sử dụng các class thuộc package `org.hibernate.*` (đồng thời triển khai các class của JPA). |
| **Interface lõi** | Định nghĩa các đối tượng như `EntityManagerFactory`, `EntityManager`, và `EntityTransaction`. | Triển khai các interface của JPA dưới các tên tương ứng là `SessionFactory`, `Session`, và `Transaction`. |
| **Tính năng** | Chỉ chứa các tính năng tiêu chuẩn đã được ban hành bởi ủy ban JCP/Jakarta. | Chứa thêm nhiều tính năng độc quyền mở rộng (ví dụ: `@Formula`, `@Filter`, các cơ chế cache và Criteria API đặc thù). |

### Lời khuyên thiết kế (Best Practice):
Nên lập trình dựa trên các interface của JPA (`EntityManager`) thay vì dùng trực tiếp các class của Hibernate. Điều này đảm bảo tính linh hoạt, giúp bạn có thể chuyển đổi từ Hibernate sang các JPA provider khác (như EclipseLink) trong tương lai mà không cần viết lại code.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-132', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is ORM?', 'ORM là gì?', '**ORM** stands for **Object-Relational Mapping**. It is a software engineering programming technique used to map data between incompatible systems: Object-Oriented Programming (OOP) languages (like Java) and Relational Database Management Systems (RDBMS) (like PostgreSQL, MySQL, or Oracle).

### The Problem It Solves (The Paradigm Mismatch):
- **OOP Paradigm**: Java represents data as a graph of interconnected objects containing state, behavior, inheritance (e.g., a `User` inherits from `Person`), and associations.
- **Relational Paradigm**: Relational databases represent data in two-dimensional flat tables (rows and columns) linked via foreign keys, with no concept of inheritance.

An ORM framework acts as a bridge that automatically translates object representations into database tables and vice versa.

### Core Features of an ORM:
1. **Metadata Mapping**: Maps a Java Class to a Database Table, Java fields to Columns, and associations (`@OneToMany`, `@ManyToMany`) to Foreign Key relationships.
2. **SQL Abstraction**: Allows developers to write database operations in object-oriented code, eliminating the need to write raw SQL statements (e.g., `session.save(user)` translates into `INSERT INTO users...`).
3. **Dirty Checking**: Automatically detects modifications made to Java objects during a transaction and updates the corresponding database rows when the transaction commits.
4. **Lazy Loading**: Delays the retrieval of related objects from the database until they are explicitly accessed, which improves performance.', '**ORM** là viết tắt của **Object-Relational Mapping** (Ánh xạ Quan hệ - Đối tượng). Đây là một kỹ thuật lập trình trong công nghệ phần mềm được dùng để chuyển đổi dữ liệu giữa hai hệ thống vốn không tương thích: Ngôn ngữ lập trình hướng đối tượng (như Java) và Hệ quản trị cơ sở dữ liệu quan hệ (RDBMS) (như PostgreSQL, MySQL, hay Oracle).

### Vấn đề ORM giải quyết (Sự bất tương thích mô hình):
- **Mô hình Hướng đối tượng (OOP)**: Java biểu diễn dữ liệu dưới dạng một đồ thị các đối tượng có quan hệ với nhau, chứa trạng thái, hành vi, tính kế thừa (ví dụ: lớp `User` kế thừa từ `Person`) và các liên kết đối tượng.
- **Mô hình Quan hệ (Relational)**: Cơ sở dữ liệu quan hệ lưu trữ dữ liệu dưới dạng các bảng hai chiều phẳng (dòng và cột) liên kết với nhau qua khóa ngoại, và không hỗ trợ tính kế thừa.

Framework ORM đóng vai trò như chiếc cầu nối tự động dịch chuyển từ các đối tượng trong code thành các bảng trong database và ngược lại.

### Các tính năng cốt lõi của ORM:
1. **Ánh xạ Metadata**: Ánh xạ một Class Java thành một bảng Database, các trường (field) thành các Cột (column), và ánh xạ liên kết đối tượng (`@OneToMany`, `@ManyToMany`) thành các mối quan hệ khóa ngoại.
2. **Trừu tượng hóa SQL**: Cho phép lập trình viên viết các thao tác dữ liệu bằng mã hướng đối tượng, loại bỏ việc viết các câu lệnh SQL thủ công (ví dụ: `session.save(user)` sẽ tự động dịch thành câu lệnh `INSERT INTO users...`).
3. **Dirty Checking**: Tự động phát hiện các thay đổi trên đối tượng Java trong suốt một transaction và cập nhật các hàng tương ứng trong cơ sở dữ liệu khi transaction kết thúc (commit).
4. **Lazy Loading (Tải chậm)**: Trì hoãn việc truy vấn các đối tượng liên quan từ database cho đến khi chúng thực sự được truy cập trong code, giúp tối ưu hóa hiệu năng.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-133', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What problem does ORM solve?', 'ORM giải quyết vấn đề gì?', '**Object-Relational Mapping (ORM)** bridges the gap between object-oriented programming (OOP) languages (like Java) and relational database management systems (RDBMS). This conflict is known as the **Object-Relational Impedance Mismatch**. 

Specifically, ORM solves the following core mismatches:

1. **Granularity Mismatch**:
   * **OOP**: Supports rich class hierarchies and user-defined user types (e.g., an `Address` class nested inside a `User` class).
   * **RDBMS**: Relies on flat tables with basic primitive data types.

2. **Inheritance Mismatch**:
   * **OOP**: Inherently supports inheritance and polymorphism (e.g., `BillingDetails` class extended by `CreditCard` and `BankAccount`).
   * **RDBMS**: Relies on schemas that do not naturally support subclassing or inheritance hierarchies.

3. **Identity Mismatch**:
   * **OOP**: Object equality is determined by memory address reference (`==`) or custom logic (`equals()`).
   * **RDBMS**: Relies on primary keys to uniquely identify database rows.

4. **Association/Relationship Mismatch**:
   * **OOP**: Associations are directional (one object points to another) and can represent many-to-many relationships naturally without helper objects. They are traversed by walking the object graph.
   * **RDBMS**: Relationships are represented via foreign keys and are bidirectional (joins can navigate both ways). Many-to-many relationships require a physical join table.

5. **Navigation and Traversal Mismatch**:
   * **OOP**: Retrieves data by calling getter methods (e.g., `user.getOrders()`), which traverses the object graph.
   * **RDBMS**: Minimizes database round-trips by joining tables inside raw SQL queries.

**Benefits of ORM**:
* **Automated Data Persistence**: Eliminates thousands of lines of boilerplate JDBC code (opening connections, prepared statements, mapping `ResultSet` to Java objects).
* **Database Independence**: Translates ORM queries (JPQL/HQL) into database-specific SQL dialect, making it easier to switch underlying databases.
* **Caching and Performance Optimization**: Automatically handles transaction write-behind, dirty checking, first-level, and second-level caching.', '**Object-Relational Mapping (ORM)** thu hẹp khoảng cách giữa các ngôn ngữ lập trình hướng đối tượng (OOP) như Java và các hệ quản trị cơ sở dữ liệu quan hệ (RDBMS). Sự xung đột này được gọi là **Bất tương thích trở kháng hướng đối tượng - quan hệ (Object-Relational Impedance Mismatch)**.

Cụ thể, ORM giải quyết các điểm bất tương thích cốt lõi sau:

1. **Bất tương thích về độ chi tiết (Granularity)**:
   * **OOP**: Hỗ trợ phân cấp lớp phong phú và các kiểu dữ liệu do người dùng tự định nghĩa (ví dụ: lớp `Address` nằm trong lớp `User`).
   * **RDBMS**: Chỉ có các bảng phẳng với các kiểu dữ liệu nguyên thủy cơ bản.

2. **Bất tương thích về tính kế thừa (Inheritance)**:
   * **OOP**: Hỗ trợ kế thừa và đa hình (ví dụ: lớp `BillingDetails` được kế thừa bởi `CreditCard` và `BankAccount`).
   * **RDBMS**: Cơ sở dữ liệu quan hệ không hỗ trợ tự nhiên cơ chế phân cấp lớp hay kế thừa.

3. **Bất tương thích về định danh (Identity)**:
   * **OOP**: So sánh đối tượng dựa trên tham chiếu địa chỉ ô nhớ (`==`) hoặc logic tùy biến (`equals()`).
   * **RDBMS**: Sử dụng các khóa chính (Primary Key) để định danh duy nhất các hàng dữ liệu.

4. **Bất tương thích về mối liên kết/quan hệ (Association)**:
   * **OOP**: Các liên kết có tính hướng (đối tượng này tham chiếu tới đối tượng kia) và duyệt qua đồ thị đối tượng. Quan hệ nhiều-nhiều được biểu diễn tự nhiên.
   * **RDBMS**: Quan hệ được biểu diễn qua khóa ngoại (Foreign Key) và có tính hai chiều (Join hoạt động cả hai hướng). Quan hệ nhiều-nhiều bắt buộc phải có một bảng trung gian vật lý.

5. **Bất tương thích về duyệt dữ liệu (Navigation/Traversal)**:
   * **OOP**: Lấy dữ liệu bằng cách gọi các phương thức getter (ví dụ: `user.getOrders()`) để duyệt qua cây đối tượng.
   * **RDBMS**: Tối ưu hóa số lần truy vấn bằng cách thực hiện phép Join các bảng trực tiếp trong SQL.

**Lợi ích của ORM**:
* **Tự động hóa lưu trữ dữ liệu**: Loại bỏ hàng ngàn dòng mã boilerplate của JDBC (mở kết nối, prepared statements, chuyển đổi `ResultSet` sang Java Object).
* **Độc lập cơ sở dữ liệu**: Dịch các truy vấn ORM (JPQL/HQL) sang các ngôn ngữ SQL riêng của từng database (SQL Dialects), giúp dễ dàng thay đổi hệ quản trị CSDL.
* **Caching và tối ưu hóa hiệu năng**: Tự động xử lý cơ chế trì hoãn ghi (write-behind), kiểm tra thay đổi (dirty checking), bộ đệm cấp 1 và cấp 2.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-134', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is an entity in JPA?', 'Entity trong JPA là gì?', 'In **JPA (Java Persistence API)**, an **Entity** is a lightweight domain object that represents a row in a database table. It is a standard Java class whose state is persisted to the database.

### Core Requirements for a JPA Entity:
1. **`@Entity` Annotation**: The class must be annotated with `@javax.persistence.Entity` (or `@jakarta.persistence.Entity`).
2. **No-arg Constructor**: The class must have a public or protected no-argument constructor. Hibernate uses this constructor to instantiate the entity using reflection when retrieving it from the database.
3. **Not Final**: The class must not be declared `final`. Hibernate creates proxy subclasses to support features like lazy loading; a `final` class cannot be subclassed.
4. **Primary Key**: The class must have a primary key annotated with `@Id` to uniquely identify each entity instance.
5. **No Final Methods/Variables**: Instance variables must not be `final` or have `final` methods if Hibernate is to access them correctly.

### Example:
```java
import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "username", nullable = false, unique = true)
    private String username;

    // Required no-arg constructor
    protected User() {}

    public User(String username) {
        this.username = username;
    }

    // Getters and setters
}
```', 'Trong **JPA (Java Persistence API)**, một **Entity** là một đối tượng nghiệp vụ (domain object) nhẹ, đại diện cho một hàng (row) trong bảng cơ sở dữ liệu. Nó là một lớp Java thông thường mà trạng thái của nó được lưu trữ bền vững vào cơ sở dữ liệu.

### Các yêu cầu bắt buộc của một JPA Entity:
1. **Annotation `@Entity`**: Lớp bắt buộc phải được đánh dấu bằng `@javax.persistence.Entity` (hoặc `@jakarta.persistence.Entity`).
2. **Constructor không tham số**: Lớp phải có một constructor không tham số với phạm vi truy cập `public` hoặc `protected`. Hibernate sử dụng constructor này thông qua reflection để tạo thực thể khi tải dữ liệu từ database.
3. **Không được là Final**: Lớp không được khai báo là `final`. Hibernate cần tạo các lớp con ảo (proxy subclasses) để hỗ trợ các tính năng như lazy loading; một lớp `final` thì không thể kế thừa được.
4. **Khóa chính**: Lớp phải có một trường làm khóa chính được đánh dấu bằng annotation `@Id` để định danh duy nhất cho mỗi thực thể.
5. **Không chứa phương thức/biến instance Final**: Các biến instance không được là `final` và không dùng các phương thức `final` để Hibernate có thể can thiệp truy cập chính xác.

### Ví dụ:
```java
import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "username", nullable = false, unique = true)
    private String username;

    // Constructor không tham số bắt buộc
    protected User() {}

    public User(String username) {
        this.username = username;
    }

    // Các hàm Getter và Setter
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-135', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What are the main entity lifecycle states?', 'Các trạng thái vòng đời chính của entity là gì?', 'JPA defines four distinct states for an entity lifecycle, managed by the **Persistence Context**:

1. **New (Transient)**:
   * The entity instance has just been instantiated using the `new` keyword.
   * It is not associated with any active Persistence Context.
   * It does not have database identity (usually has no primary key value unless assigned manually).
   * **Transition to Managed**: Call `persist()` or through cascade save operations.

2. **Managed (Persistent)**:
   * The entity is associated with an active Persistence Context and has a database identity (ID).
   * Any changes made to the object''s properties will be tracked by Hibernate''s dirty checking mechanism and automatically synchronized (flushed) to the database at the end of the transaction.
   * **Transition to Detached**: Call `detach()`, `clear()`, or close the `EntityManager`.
   * **Transition to Removed**: Call `remove()`.

3. **Detached**:
   * The entity has a database identity (ID), but it is no longer associated with an active Persistence Context (e.g., the transaction ended, or the entity manager was closed/cleared).
   * Any modifications to the object state will not be tracked or updated in the database.
   * **Transition to Managed**: Call `merge()`.

4. **Removed**:
   * The entity is associated with an active Persistence Context but is scheduled for deletion from the database.
   * The physical database delete statement will run during the next flush or transaction commit.
   * **Transition to Managed**: Call `persist()` on the removed entity to cancel deletion.', 'JPA định nghĩa bốn trạng thái khác nhau trong vòng đời của một thực thể, được quản lý bởi **Persistence Context**:

1. **New (Transient)**:
   * Đối tượng thực thể vừa được khởi tạo bằng từ khóa `new`.
   * Chưa liên kết với bất kỳ Persistence Context nào đang hoạt động.
   * Không có định danh cơ sở dữ liệu (thông thường chưa có khóa chính trừ khi được gán thủ công).
   * **Chuyển sang Managed**: Gọi hàm `persist()` hoặc thông qua cơ chế cascade lưu trữ.

2. **Managed (Persistent)**:
   * Thực thể đã liên kết với một Persistence Context đang hoạt động và đã có định danh database (ID).
   * Mọi thay đổi trên các thuộc tính của đối tượng sẽ được theo dõi bởi cơ chế dirty checking của Hibernate và tự động đồng bộ (flush) xuống database khi transaction kết thúc.
   * **Chuyển sang Detached**: Gọi hàm `detach()`, `clear()`, hoặc đóng `EntityManager`.
   * **Chuyển sang Removed**: Gọi hàm `remove()`.

3. **Detached**:
   * Thực thể đã có định danh database (ID), nhưng không còn liên kết với bất kỳ Persistence Context nào hoạt động (ví dụ: giao dịch kết thúc, hoặc entity manager bị đóng/xóa sạch cache).
   * Mọi thay đổi thuộc tính trên đối tượng này sẽ không được theo dõi hoặc cập nhật vào database.
   * **Chuyển sang Managed**: Gọi hàm `merge()`.

4. **Removed**:
   * Thực thể đang liên kết với một Persistence Context hoạt động nhưng đã được lên lịch để xóa khỏi database.
   * Câu lệnh SQL DELETE vật lý sẽ được thực thi trong lần flush tiếp theo hoặc khi commit transaction.
   * **Chuyển sang Managed**: Gọi hàm `persist()` trên thực thể đã bị remove để hủy lệnh xóa.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-136', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is the persistence context?', 'Persistence context là gì?', 'The **Persistence Context** is a staging area or database wrapper where entity instances are managed. It acts as an **Identity Map** and a **First-level Cache** within JPA.

### Key Characteristics:
* **EntityManager Control**: The persistence context is managed by an `EntityManager` (or Hibernate `Session`). It controls the lifecycle of entities.
* **Identity Map**: It ensures that for any unique database record (identified by table and primary key), there is at most **one** corresponding entity instance in memory. Calling `find()` twice for the same ID in the same context returns the exact same object reference.
* **Transaction boundary**: Usually, a persistence context is **Transaction-Scoped** (created when a transaction begins, and destroyed/flushed when the transaction commits).
* **Write-Behind (Buffering)**: It keeps track of modifications and delays database writes (SQL INSERT, UPDATE, DELETE) until the last possible moment (flush/commit) to optimize performance.

### Types of Persistence Context:
1. **Transaction-Scoped (Default)**: The persistence context is bound to a single transaction. When the transaction finishes, entities become detached.
2. **Extended**: The persistence context spans across multiple transactions (commonly used in stateful session beans). Entities remain managed even when no transaction is active.', '**Persistence Context** là một vùng lưu trữ đệm hoặc trình bao bọc (wrapper) database nơi các đối tượng thực thể được quản lý. Nó đóng vai trò như một **Bản đồ định danh (Identity Map)** và **Bộ nhớ đệm cấp một (First-level Cache)** trong JPA.

### Các đặc điểm chính:
* **Quản lý bởi EntityManager**: Persistence context được quản lý bởi một `EntityManager` (hoặc `Session` của Hibernate). Nó điều khiển vòng đời của các thực thể.
* **Bản đồ định danh (Identity Map)**: Đảm bảo rằng đối với mỗi bản ghi database duy nhất (định danh bằng bảng và khóa chính), chỉ có tối đa **một** đối tượng thực thể tương ứng tồn tại trong bộ nhớ. Gọi `find()` hai lần với cùng một ID trong cùng một context sẽ trả về cùng một tham chiếu đối tượng.
* **Phạm vi giao dịch**: Thông thường, persistence context có phạm vi giao dịch (**Transaction-Scoped**) - được tạo ra khi transaction bắt đầu, và bị hủy/đồng bộ khi transaction commit.
* **Trì hoãn ghi (Write-Behind)**: Nó theo dõi các thay đổi và trì hoãn việc ghi xuống DB (SQL INSERT, UPDATE, DELETE) đến thời điểm muộn nhất có thể (flush/commit) nhằm tối ưu hóa hiệu năng.

### Các loại Persistence Context:
1. **Transaction-Scoped (Mặc định)**: Gắn liền với một giao dịch đơn lẻ. Khi giao dịch hoàn thành, các thực thể trở thành detached.
2. **Extended**: Kéo dài qua nhiều giao dịch khác nhau (thường dùng trong các Stateful Session Beans). Các thực thể vẫn ở trạng thái managed ngay cả khi không có giao dịch nào đang hoạt động.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-137', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is the first-level cache in Hibernate?', 'First-level cache trong Hibernate là gì?', 'The **First-level Cache** (also known as the Session-level Cache) is the **Persistence Context** itself, associated with a Hibernate `Session` (or JPA `EntityManager`). 

### Key Concepts:
* **Scope**: It is strictly bound to the current `Session`. It is not shared across different database sessions, threads, or transactions.
* **Availability**: It is **enabled by default** and **cannot be disabled**. Every query, persist, or merge operation goes through the first-level cache first.
* **Preventing Duplicates**: If you request the same database record multiple times within the same session using methods like `find()` or `get()`, Hibernate will issue a SQL query on the first call, load it into the first-level cache, and return the cached instance on subsequent calls.

### Benefits:
* **Performance**: Reduces database round-trips for repetitive reads of the same entities.
* **Consistency**: Ensures that within the same transaction, different parts of the code referencing the same entity modify the exact same Java object instance, preventing data inconsistency in memory.', '**First-level Cache** (hay còn gọi là bộ nhớ đệm cấp Session) chính là **Persistence Context**, gắn liền với một đối tượng `Session` của Hibernate (hoặc `EntityManager` của JPA).

### Các khái niệm cốt lõi:
* **Phạm vi (Scope)**: Chỉ giới hạn trong `Session` hiện tại. Nó không được chia sẻ giữa các session, thread, hoặc transaction khác nhau.
* **Tính khả dụng**: Được **bật mặc định** và **không thể tắt**. Mọi thao tác truy vấn, persist, hay merge đều phải đi qua bộ nhớ đệm cấp một này trước.
* **Ngăn chặn trùng lặp**: Nếu bạn yêu cầu cùng một bản ghi database nhiều lần trong cùng một session thông qua các hàm như `find()` hoặc `get()`, Hibernate sẽ chạy câu lệnh SQL ở lần đầu tiên, đưa thực thể đó vào first-level cache, và trả về đối tượng đã lưu trong cache cho các lần gọi tiếp theo.

### Lợi ích:
* **Hiệu năng**: Giảm số lượng truy vấn xuống database đối với các thao tác đọc lặp đi lặp lại trên cùng một thực thể.
* **Nhất quán dữ liệu**: Đảm bảo rằng trong cùng một transaction, các đoạn mã khác nhau khi tham chiếu cùng một thực thể sẽ thao tác trên cùng một instance Java, tránh sự bất nhất về dữ liệu trong bộ nhớ.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-138', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is dirty checking?', 'Dirty checking là gì?', '**Dirty Checking** is a core Hibernate mechanism that automatically detects modifications made to managed entities within a transaction and synchronizes those changes with the database.

### How It Works:
1. **State Snapshot**: When Hibernate loads an entity from the database or when an entity becomes managed, Hibernate keeps an internal copy (snapshot) of the entity''s current state inside the persistence context.
2. **Modification Detection**: During the transaction, you can modify the properties of the entity using standard Java setter methods.
3. **Automatic Update**: When the transaction is about to commit or when a `flush()` is triggered, Hibernate compares the current state of the managed entities against their snapshot state.
4. **SQL Execution**: If any difference is detected (the entity is "dirty"), Hibernate automatically generates and executes a SQL `UPDATE` statement. There is no need to manually call `session.update()` or `entityManager.merge()` to save the changes.

### Optimization Tip:
By default, Hibernate updates all columns in the update statement. To update only modified columns, annotate the entity class with `@DynamicUpdate`:
```java
@Entity
@org.hibernate.annotations.DynamicUpdate
public class User { ... }
```', '**Dirty Checking** (kiểm tra trạng thái thay đổi) là một cơ chế cốt lõi của Hibernate giúp tự động phát hiện các thay đổi trên các thực thể đang được quản lý (managed) trong một giao dịch và đồng bộ các thay đổi đó xuống cơ sở dữ liệu.

### Cách thức hoạt động:
1. **Bản chụp trạng thái (Snapshot)**: Khi Hibernate tải một thực thể từ database hoặc khi thực thể chuyển sang trạng thái managed, Hibernate sẽ giữ một bản sao nội bộ (snapshot) ghi lại trạng thái ban đầu của thực thể trong persistence context.
2. **Phát hiện sửa đổi**: Trong suốt giao dịch, bạn có thể chỉnh sửa các thuộc tính của thực thể bằng các phương thức setter thông thường.
3. **Tự động cập nhật**: Khi transaction chuẩn bị commit hoặc khi hàm `flush()` được kích hoạt, Hibernate sẽ so sánh trạng thái hiện tại của thực thể với bản chụp (snapshot).
4. **Thực thi SQL**: Nếu phát hiện bất kỳ sự khác biệt nào (thực thể bị coi là "dirty"), Hibernate sẽ tự động tạo và thực thi câu lệnh SQL `UPDATE`. Lập trình viên không cần gọi thủ công `session.update()` hay `entityManager.merge()` để lưu thay đổi.

### Mẹo tối ưu hóa hiệu năng:
Mặc định, Hibernate sẽ cập nhật tất cả các cột trong câu lệnh update. Để chỉ cập nhật những cột thực sự bị thay đổi, hãy gắn annotation `@DynamicUpdate` lên trên lớp entity:
```java
@Entity
@org.hibernate.annotations.DynamicUpdate
public class User { ... }
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-139', 'JPA/Hibernate', 'JPA/Hibernate', 'Senior', 'What is the difference between persist(), merge(), and save()?', 'Sự khác biệt giữa persist(), merge() và save() là gì?', 'These methods are used to save entities, but they have distinct differences in lifecycle state transitions, return types, and SQL execution timing:

### 1. `persist()` (JPA Standard)
* **Purpose**: Makes a transient (new) entity instance managed.
* **Return Type**: `void`. It modifies the passed entity in place.
* **SQL Timing**: Does not guarantee immediate INSERT SQL execution (postponed until flush/commit), unless the primary key generation strategy is `IDENTITY`, in which case it runs INSERT immediately to obtain the ID.
* **Behavior with Detached Entities**: Throws an `IllegalArgumentException` if you pass a detached entity (an entity with an existing ID).

### 2. `merge()` (JPA Standard)
* **Purpose**: Copies the state of the passed entity onto a managed instance retrieved from the persistence context (or database) and returns that managed instance.
* **Return Type**: The managed instance. The original entity passed as an argument remains **detached**.
* **SQL Timing**: Performs a SELECT first to see if the record exists, then executes either INSERT (if new) or UPDATE (if modified).
* **Behavior with Detached Entities**: Works perfectly; updates the database and returns a managed version.

### 3. `save()` (Hibernate Specific)
* **Purpose**: Saves the state of a transient instance to the database and returns the generated identifier.
* **Return Type**: The generated identifier (e.g., `Long` or `UUID`).
* **SQL Timing**: Tends to execute the SQL `INSERT` statement immediately to fetch the generated identifier, regardless of transaction boundaries (depending on generator configuration).
* **Behavior with Detached Entities**: If called on a detached entity, it treats it as a new entity and generates a new record (leads to duplicate records with new IDs).', 'Các phương thức này đều dùng để lưu thực thể, nhưng có sự khác biệt rõ rệt về chuyển đổi trạng thái vòng đời, kiểu trả về và thời điểm thực thi SQL:

### 1. `persist()` (Tiêu chuẩn JPA)
* **Mục đích**: Chuyển một thực thể ở trạng thái transient (mới) sang managed.
* **Kiểu trả về**: `void`. Nó thay đổi trực tiếp trên đối tượng truyền vào.
* **Thời điểm SQL**: Không đảm bảo thực thi câu lệnh SQL INSERT ngay lập tức (trì hoãn đến khi flush/commit), trừ khi chiến lược tạo khóa chính là `IDENTITY`, lúc đó nó sẽ chạy INSERT ngay để lấy ID.
* **Hành vi với thực thể Detached**: Ném lỗi `IllegalArgumentException` nếu truyền vào một thực thể detached (thực thể đã có sẵn ID).

### 2. `merge()` (Tiêu chuẩn JPA)
* **Mục đích**: Sao chép trạng thái của thực thể truyền vào sang một đối tượng managed (được tải lên từ persistence context hoặc database) và trả về đối tượng managed đó.
* **Kiểu trả về**: Đối tượng managed mới. Thực thể gốc truyền vào tham số vẫn ở trạng thái **detached**.
* **Thời điểm SQL**: Thực hiện SELECT trước để kiểm tra sự tồn tại của bản ghi, sau đó chạy INSERT (nếu mới) hoặc UPDATE (nếu có thay đổi).
* **Hành vi với thực thể Detached**: Hoạt động tốt; cập nhật database và trả về phiên bản managed.

### 3. `save()` (Hàm riêng của Hibernate)
* **Mục đích**: Lưu trạng thái của thực thể transient vào database và trả về định danh được tạo ra.
* **Kiểu trả về**: Định danh được tạo ra (ví dụ: `Long` hoặc `UUID`).
* **Thời điểm SQL**: Thường thực thi câu lệnh SQL `INSERT` ngay lập tức để lấy ID được tạo ra, bất chấp ranh giới giao dịch (tùy cấu hình generator).
* **Hành vi với thực thể Detached**: Nếu gọi trên một thực thể detached, nó xem như thực thể mới và tạo một bản ghi mới hoàn toàn (dẫn đến trùng lặp dữ liệu với ID mới).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-140', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is the difference between findById() and getReferenceById()?', 'Sự khác biệt giữa findById() và getReferenceById() là gì?', 'Both methods are used to retrieve an entity by its identifier in Spring Data JPA, but they differ in how they query the database and load data:

### 1. `findById()` (Eager Fetch)
* **How it works**: Queries the database immediately (via a SQL `SELECT` statement) to fetch the full state of the entity (unless it is already present in the persistence context/cache).
* **Return Type**: `Optional<T>`. You must unpack it using `.get()`, `.orElse()`, etc.
* **Missing Record**: Returns `Optional.empty()` if the record does not exist in the database.
* **Usage**: Use when you need immediate access to all fields of the entity.

### 2. `getReferenceById()` (Lazy Proxy - formerly `getOne()`)
* **How it works**: Returns a dynamically generated **Proxy** object (a subclass of the entity) initialized only with the primary key. It **does not** hit the database immediately.
* **SQL Timing**: The database query is deferred until you access any property other than the identifier (e.g., `user.getEmail()`). Calling `user.getId()` will not trigger a query since the proxy already holds the ID.
* **Missing Record**: Throws `EntityNotFoundException` at the moment a property is accessed if the record does not exist in the database.
* **Usage**: Ideal when you only need to establish a foreign key relationship (e.g., assigning a parent category to a product) without wasting a database query to load the parent''s full attributes.', 'Cả hai phương thức này đều dùng để lấy một thực thể theo định danh của nó trong Spring Data JPA, nhưng chúng khác nhau ở cách thức truy vấn cơ sở dữ liệu và tải dữ liệu:

### 1. `findById()` (Tải Eager)
* **Cách hoạt động**: Truy vấn database ngay lập tức (qua câu lệnh SQL `SELECT`) để lấy đầy đủ trạng thái của thực thể (trừ khi nó đã có sẵn trong persistence context/cache).
* **Kiểu trả về**: `Optional<T>`. Bạn cần giải nén bằng các hàm như `.get()`, `.orElse()`, v.v.
* **Khi không tìm thấy bản ghi**: Trả về `Optional.empty()` nếu bản ghi không tồn tại trong DB.
* **Sử dụng**: Dùng khi bạn cần truy cập trực tiếp và ngay lập tức vào tất cả các trường dữ liệu của thực thể.

### 2. `getReferenceById()` (Proxy Lazy - trước đây là `getOne()`)
* **Cách hoạt động**: Trả về một đối tượng **Proxy** được tạo động (lớp con của thực thể) chỉ được khởi tạo với khóa chính. Nó **không** gọi tới database ngay lập tức.
* **Thời điểm SQL**: Truy vấn database được trì hoãn cho đến khi bạn truy cập vào bất kỳ thuộc tính nào khác ngoài ID (ví dụ: `user.getEmail()`). Gọi `user.getId()` sẽ không kích hoạt truy vấn vì proxy đã nắm giữ ID.
* **Khi không tìm thấy bản ghi**: Ném ngoại lệ `EntityNotFoundException` tại thời điểm thuộc tính khác được truy cập nếu bản ghi không tồn tại trong DB.
* **Sử dụng**: Cực kỳ hữu ích khi bạn chỉ cần thiết lập mối quan hệ khóa ngoại (ví dụ: gán danh mục cha cho sản phẩm) mà không muốn tốn một truy vấn database dư thừa để tải toàn bộ thuộc tính của danh mục cha.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-141', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is the purpose of @Id and @GeneratedValue?', 'Mục đích của @Id và @GeneratedValue là gì?', 'In JPA, `@Id` and `@GeneratedValue` are used to define the primary key of an entity class and configure its generation strategy.

### 1. `@Id`
* **Purpose**: Marks a field or property of an entity class as the primary key. Every JPA entity must have a primary key to uniquely identify the record in the database.
* **Behavior**: Maps directly to the primary key column of the database table.

### 2. `@GeneratedValue`
* **Purpose**: Configures how the primary key value is generated.
* **Strategies (`GenerationType`)**:
  1. **`IDENTITY`**: Relies on the database identity column (e.g., `AUTO_INCREMENT` in MySQL, `SERIAL` in PostgreSQL). The ID is generated upon insertion.
  2. **`SEQUENCE`**: Uses a database sequence object (highly recommended for PostgreSQL and Oracle). Hibernate can pre-allocate blocks of IDs to optimize performance.
  3. **`TABLE`**: Uses a separate table to simulate sequence values. High performance overhead, rarely used.
  4. **`AUTO`**: Default strategy. The JPA provider selects the most appropriate strategy based on the database type (dialect).

### Example:
```java
@Id
@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_seq")
@SequenceGenerator(name = "user_seq", sequenceName = "users_sequence", allocationSize = 50)
private Long id;
```', 'Trong JPA, `@Id` và `@GeneratedValue` được dùng để định nghĩa khóa chính cho lớp thực thể và cấu hình chiến lược tạo giá trị cho khóa chính đó.

### 1. `@Id`
* **Mục đích**: Đánh dấu một trường hoặc thuộc tính của lớp thực thể làm khóa chính. Mỗi JPA entity bắt buộc phải có khóa chính để định danh duy nhất cho bản ghi trong database.
* **Hành vi**: Ánh xạ trực tiếp đến cột khóa chính trong bảng cơ sở dữ liệu.

### 2. `@GeneratedValue`
* **Mục đích**: Cấu hình cách thức tạo ra giá trị cho khóa chính một cách tự động.
* **Các chiến lược tạo khóa chính (`GenerationType`)**:
  1. **`IDENTITY`**: Dựa trên cột tự động tăng của cơ sở dữ liệu (ví dụ: `AUTO_INCREMENT` trong MySQL, `SERIAL` trong PostgreSQL). ID được tạo ra ngay khi bản ghi được chèn vào DB.
  2. **`SEQUENCE`**: Sử dụng đối tượng Sequence trong database (được khuyến nghị cho PostgreSQL và Oracle). Hibernate có thể phân bổ trước một khối ID để tối ưu hiệu năng.
  3. **`TABLE`**: Sử dụng một bảng phụ riêng biệt để mô phỏng giá trị sequence. Gây ảnh hưởng lớn đến hiệu năng, rất ít khi sử dụng.
  4. **`AUTO`**: Chiến lược mặc định. JPA provider sẽ tự động chọn chiến lược phù hợp nhất dựa trên loại cơ sở dữ liệu (database dialect).

### Ví dụ:
```java
@Id
@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_seq")
@SequenceGenerator(name = "user_seq", sequenceName = "users_sequence", allocationSize = 50)
private Long id;
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-142', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is the difference between @OneToOne, @OneToMany, @ManyToOne, and @ManyToMany?', 'Sự khác biệt giữa @OneToOne, @OneToMany, @ManyToOne và @ManyToMany là gì?', 'These annotations define the cardinality (relationship mapping) between entities in JPA:

| Annotation | Cardinality | Database Mapping | Default Fetch Type |
|---|---|---|---|
| **`@OneToOne`** | One-to-One | Foreign key in one table, or shared primary key | `EAGER` |
| **`@ManyToOne`** | Many-to-One | Foreign key column in the "Many" side table | `EAGER` |
| **`@OneToMany`** | One-to-Many | Typically foreign key in the child table (inverse side) | `LAZY` |
| **`@ManyToMany`** | Many-to-Many | A separate join table linking primary keys | `LAZY` |

### Summary of differences:
1. **`@OneToOne`**: A user has one profile; a profile belongs to one user.
2. **`@ManyToOne`**: Many orders belong to a single customer. It is the most common association and always maps to a physical column (foreign key).
3. **`@OneToMany`**: One customer has many orders. It is usually the inverse (bidirectional) side of a `@ManyToOne` relationship using `mappedBy`.
4. **`@ManyToMany`**: Many students enroll in many courses. It requires a join table to map the relationship because relational databases cannot store list values directly in columns.', 'Các annotation này định nghĩa lực lượng (mối quan hệ ánh xạ) giữa các thực thể trong JPA:

| Annotation | Mối quan hệ | Khai báo trong Database | Kiểu Fetch mặc định |
|---|---|---|---|
| **`@OneToOne`** | Một - Một | Khóa ngoại trong một bảng, hoặc dùng chung khóa chính | `EAGER` |
| **`@ManyToOne`** | Nhiều - Một | Cột khóa ngoại nằm ở bảng phía "Nhiều" | `EAGER` |
| **`@OneToMany`** | Một - Nhiều | Thường là khóa ngoại nằm ở bảng con (phía đối diện) | `LAZY` |
| **`@ManyToMany`** | Nhiều - Nhiều | Một bảng trung gian (join table) liên kết các khóa chính | `LAZY` |

### Tóm tắt sự khác biệt:
1. **`@OneToOne`**: Một user chỉ có một profile; một profile chỉ thuộc về một user.
2. **`@ManyToOne`**: Nhiều đơn hàng (orders) thuộc về một khách hàng (customer). Đây là liên kết phổ biến nhất và luôn ánh xạ trực tiếp đến một cột vật lý (khóa ngoại).
3. **`@OneToMany`**: Một khách hàng (customer) có nhiều đơn hàng (orders). Thường là chiều ngược lại (hai chiều) của mối quan hệ `@ManyToOne` thông qua thuộc tính `mappedBy`.
4. **`@ManyToMany`**: Nhiều học sinh (students) đăng ký nhiều khóa học (courses). Mối quan hệ này bắt buộc phải có một bảng trung gian để liên kết vì cơ sở dữ liệu quan hệ không thể lưu danh sách các giá trị trực tiếp trong một cột.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-143', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is the owning side of a JPA relationship?', 'Owning side của một quan hệ JPA là gì?', 'In a JPA bidirectional relationship, the **Owning Side** is the side of the relationship that is responsible for persisting/updating the relationship in the database (i.e., managing the foreign key column).

### Key Concepts:
1. **The Inverse Side**: The other side of the relationship is called the **Inverse (or Non-Owning) Side**. It uses the `mappedBy` attribute of annotations like `@OneToOne`, `@OneToMany`, or `@ManyToMany`.
2. **Database Control**: Hibernate only monitors changes on the **Owning Side** to generate SQL INSERT or UPDATE statements. If you modify only the collection on the non-owning side, the change will **not** be saved to the database.
3. **Rule of Thumb**: 
   * In a `@ManyToOne` / `@OneToMany` relationship, the `@ManyToOne` side is **always** the owning side because the foreign key is physically stored in that side''s table.
   * For `@ManyToMany` and `@OneToOne` bidirectional relationships, you must explicitly declare the non-owning side using `mappedBy` on one of the entities.

### Best Practice:
To ensure object consistency in memory, always keep both sides in sync using helper methods in the owning entity:
```java
public void addOrder(Order order) {
    this.orders.add(order);
    order.setCustomer(this); // Setting the owning side
}
```', 'Trong một mối quan hệ hai chiều (bidirectional) của JPA, **Owning Side** (phía sở hữu) là phía chịu trách nhiệm lưu trữ/cập nhật mối quan hệ đó vào cơ sở dữ liệu (tức là trực tiếp quản lý cột khóa ngoại - foreign key).

### Các khái niệm then chốt:
1. **Inverse Side**: Phía đối diện của mối quan hệ được gọi là **Inverse (hoặc Non-Owning) Side**. Nó sử dụng thuộc tính `mappedBy` trong các annotation như `@OneToOne`, `@OneToMany`, hoặc `@ManyToMany`.
2. **Quyết định ghi xuống DB**: Hibernate chỉ theo dõi những thay đổi trên **Owning Side** để sinh ra các câu lệnh SQL INSERT hoặc UPDATE. Nếu bạn chỉ sửa đổi collection ở phía non-owning side, thay đổi đó sẽ **không** được lưu vào database.
3. **Quy tắc thực hành**:
   * Trong quan hệ `@ManyToOne` / `@OneToMany`, phía `@ManyToOne` **luôn luôn** là owning side vì cột khóa ngoại được lưu vật lý trong bảng của thực thể này.
   * Trong quan hệ `@ManyToMany` và `@OneToOne` hai chiều, bạn phải chỉ định rõ phía non-owning bằng cách dùng thuộc tính `mappedBy` trên một trong hai thực thể.

### Thực hành tốt nhất (Best Practice):
Để đảm bảo tính nhất quán của đối tượng trong bộ nhớ, luôn đồng bộ cả hai phía bằng cách sử dụng các hàm tiện ích (helper methods) nằm ở thực thể sở hữu:
```java
public void addOrder(Order order) {
    this.orders.add(order);
    order.setCustomer(this); // Thiết lập giá trị cho owning side
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-144', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What does mappedBy mean?', 'mappedBy có ý nghĩa gì?', 'In JPA (Java Persistence API), the `mappedBy` attribute is used to define the **referencing (non-owning) side** of a bidirectional association between two entities.

### 1. Owning Side vs. Non-Owning Side
* **Owning Side**: The side responsible for maintaining the relationship in the database (it usually holds the foreign key column). It does **not** use the `mappedBy` attribute. Instead, it defines the relationship mapping using `@JoinColumn` or `@JoinTable`.
* **Non-Owning (Inverse) Side**: The side that uses the `mappedBy` attribute to point to the field name in the owning entity that maps the relationship.

### 2. Why it is needed
* Without `mappedBy`, JPA treats the relationship as two independent unidirectional associations, which results in redundant join tables or duplicate foreign key updates.
* `mappedBy` tells Hibernate/JPA: *"This relationship is already mapped by the field named `<attribute>` in the other entity. Do not create an extra column or join table here; just fetch the data through it."*

### Code Example:
```java
@Entity
public class Company {
    @Id
    private Long id;
    
    // Non-owning side: "company" is the field name in the Employee entity
    @OneToMany(mappedBy = "company")
    private List<Employee> employees;
}

@Entity
public class Employee {
    @Id
    private Long id;
    
    // Owning side: holds the foreign key "company_id" in the database
    @ManyToOne
    @JoinColumn(name = "company_id")
    private Company company;
}
```', 'Trong JPA (Java Persistence API), thuộc tính `mappedBy` được sử dụng để xác định **phía tham chiếu (non-owning side)** của một mối quan hệ hai chiều (bidirectional association) giữa hai thực thể (entities).

### 1. Phía sở hữu (Owning Side) và Phía không sở hữu (Non-Owning Side)
* **Phía sở hữu (Owning Side)**: Chịu trách nhiệm duy trì mối quan hệ trong cơ sở dữ liệu (thường là phía chứa cột khóa ngoại). Phía này **không** sử dụng thuộc tính `mappedBy`, thay vào đó sử dụng các annotation như `@JoinColumn` hoặc `@JoinTable` để định nghĩa.
* **Phía không sở hữu (Non-Owowning/Inverse Side)**: Sử dụng thuộc tính `mappedBy` để chỉ ra tên trường (field) trong thực thể sở hữu chịu trách nhiệm ánh xạ mối quan hệ này.

### 2. Tại sao cần thiết
* Nếu không có `mappedBy`, JPA sẽ coi mối quan hệ này là hai mối quan hệ một chiều độc lập, dẫn đến việc tạo ra bảng trung gian (join table) dư thừa hoặc phát sinh các câu lệnh cập nhật khóa ngoại trùng lặp.
* `mappedBy` báo cho Hibernate/JPA biết: *"Mối quan hệ này đã được ánh xạ bởi trường có tên là `<attribute>` trong thực thể đối tác. Không cần tạo thêm cột hay bảng liên kết nào khác ở đây; chỉ cần lấy dữ liệu thông qua liên kết đó."*

### Ví dụ mã nguồn:
```java
@Entity
public class Company {
    @Id
    private Long id;
    
    // Phía không sở hữu: "company" là tên trường trong thực thể Employee
    @OneToMany(mappedBy = "company")
    private List<Employee> employees;
}

@Entity
public class Employee {
    @Id
    private Long id;
    
    // Phía sở hữu: chứa khóa ngoại company_id trong database
    @ManyToOne
    @JoinColumn(name = "company_id")
    private Company company;
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-145', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is the difference between FetchType.LAZY and FetchType.EAGER?', 'Sự khác biệt giữa FetchType.LAZY và FetchType.EAGER là gì?', '`FetchType` determines the loading strategy of associated entities from the database.

### 1. `FetchType.LAZY`
* **Behavior**: The associated entities or collections are not loaded from the database until they are explicitly accessed (e.g., calling `company.getEmployees().size()`).
* **Mechanism**: Hibernate uses runtime proxies (e.g., via ByteBuddy) to represent uninitialized associations. When a getter method is called on the proxy inside an active transaction, a database query is executed to fetch the actual data.
* **Defaults**: It is the default for `@OneToMany` and `@ManyToMany` relationships.
* **Pros & Cons**: Improves initial query performance and saves memory, but can cause `LazyInitializationException` if accessed outside an active Hibernate Session, or trigger the N+1 query problem.

### 2. `FetchType.EAGER`
* **Behavior**: The associated entities or collections are fetched immediately along with the parent entity using database joins (e.g., `LEFT OUTER JOIN`) or separate queries immediately after.
* **Defaults**: It is the default for `@ManyToOne` and `@OneToOne` relationships.
* **Pros & Cons**: Prevents `LazyInitializationException` because everything is already loaded, but severely impacts performance when retrieving lists of entities, as large amounts of unwanted data are fetched eagerly.

### Summary Table
| Feature | FetchType.LAZY | FetchType.EAGER |
| :--- | :--- | :--- |
| **Loading Timing** | On-demand (when accessed) | Immediately (when parent is loaded) |
| **Default for** | `@OneToMany`, `@ManyToMany` | `@ManyToOne`, `@OneToOne` |
| **Performance** | High efficiency (only loads what is needed) | Lower efficiency (loads everything) |
| **Risk** | Can cause `LazyInitializationException` | Can cause memory issues & performance degradation |', '`FetchType` xác định chiến lược tải các thực thể liên quan từ cơ sở dữ liệu.

### 1. `FetchType.LAZY`
* **Hành vi**: Các thực thể hoặc tập hợp (collections) liên quan sẽ không được tải từ cơ sở dữ liệu cho đến khi chúng được truy cập trực tiếp (ví dụ: khi gọi `company.getEmployees().size()`).
* **Cơ chế**: Hibernate sử dụng proxy lúc chạy (runtime proxies - thông qua ByteBuddy) để đại diện cho các liên kết chưa được khởi tạo. Khi một phương thức getter được gọi trên proxy bên trong một transaction đang hoạt động, một truy vấn DB sẽ được thực thi để lấy dữ liệu thực tế.
* **Mặc định**: Là giá trị mặc định cho các mối quan hệ `@OneToMany` và `@ManyToMany`.
* **Ưu & Nhược điểm**: Cải thiện hiệu năng truy vấn ban đầu và tiết kiệm bộ nhớ, nhưng có thể gây ra `LazyInitializationException` nếu truy cập dữ liệu bên ngoài Session hoạt động của Hibernate, hoặc dẫn đến vấn đề truy vấn N+1.

### 2. `FetchType.EAGER`
* **Hành vi**: Các thực thể hoặc tập hợp liên quan được tải ngay lập tức cùng với thực thể cha bằng cách sử dụng các câu lệnh JOIN (ví dụ: `LEFT OUTER JOIN`) hoặc các câu lệnh truy vấn bổ sung ngay sau đó.
* **Mặc định**: Là giá trị mặc định cho các mối quan hệ `@ManyToOne` và `@OneToOne`.
* **Ưu & Nhược điểm**: Tránh được lỗi `LazyInitializationException` do toàn bộ dữ liệu đã được tải sẵn, nhưng ảnh hưởng nghiêm trọng đến hiệu năng khi truy vấn danh sách thực thể, vì một lượng lớn dữ liệu không cần thiết sẽ bị tải liên tục.

### Bảng so sánh tóm tắt
| Đặc trưng | FetchType.LAZY | FetchType.EAGER |
| :--- | :--- | :--- |
| **Thời điểm tải** | Khi có nhu cầu (khi được truy cập) | Ngay lập tức (khi thực thể cha được tải) |
| **Mặc định cho** | `@OneToMany`, `@ManyToMany` | `@ManyToOne`, `@OneToOne` |
| **Hiệu năng** | Hiệu quả cao (chỉ tải những gì cần thiết) | Hiệu quả thấp (tải toàn bộ dữ liệu liên quan) |
| **Rủi ro** | Có thể gây ra `LazyInitializationException` | Dễ gây quá tải bộ nhớ & suy giảm hiệu năng |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-146', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'Why is lazy loading commonly preferred?', 'Tại sao lazy loading thường được ưu tiên lựa chọn hơn?', 'Lazy loading (`FetchType.LAZY`) is preferred as the default strategy in production enterprise systems for several key reasons:

1. **Performance and Resource Efficiency**:
   * It prevents loading unnecessary data. For example, if you fetch a `User` entity just to display their username, you do not need to load their list of thousands of `Order` or `Notification` records.
   * It saves database CPU, network bandwidth, and JVM heap space by minimizing data transfer and object instantiation.

2. **Prevents Cartesian Product and OutOfMemory Issues**:
   * Eager fetching multiple collections (e.g., multiple `@OneToMany` with `FetchType.EAGER`) can trigger a Cartesian product in SQL joins. This multiplies the number of rows returned exponentially, leading to extreme memory consumption and slowing down the database.

3. **Flexibility and Control**:
   * By starting with `LAZY`, you have the flexibility to load relations dynamically when needed using **Fetch Joins** (JPQL/Criteria API) or **Entity Graphs**.
   * It is much easier to make a lazy relationship eager for specific queries than to force an eager relationship to behave lazily.', 'Lazy loading (`FetchType.LAZY`) là chiến lược mặc định được ưu tiên trong các hệ thống doanh nghiệp thực tế vì những lý do quan trọng sau:

1. **Hiệu năng và Tối ưu hóa Tài nguyên**:
   * Tránh việc tải dữ liệu không cần thiết. Ví dụ, nếu bạn chỉ cần lấy thực thể `User` để hiển thị tên đăng nhập, bạn không cần phải tải thêm danh sách hàng nghìn bản ghi `Order` hoặc `Notification` liên quan.
   * Tiết kiệm CPU của database, băng thông mạng và dung lượng JVM heap bằng cách giảm thiểu việc truyền tải dữ liệu và khởi tạo đối tượng Java dư thừa.

2. **Tránh Tích Descartes (Cartesian Product) và Quá tải Bộ nhớ (OutOfMemory)**:
   * Việc tải eager nhiều collection cùng lúc (ví dụ: nhiều `@OneToMany` có `FetchType.EAGER`) sẽ kích hoạt tích Descartes trong SQL JOIN. Điều này nhân số dòng dữ liệu trả về theo cấp số nhân, dẫn đến tiêu thụ bộ nhớ cực lớn và làm treo hệ thống database.

3. **Tính linh hoạt và khả năng kiểm soát**:
   * Khi thiết lập mặc định là `LAZY`, bạn hoàn toàn linh hoạt trong việc tải động các mối quan hệ khi thực sự cần thiết bằng cách sử dụng **Fetch Join** (JPQL/Criteria API) hoặc **Entity Graph**.
   * Việc chuyển đổi một mối quan hệ từ lazy sang eager cho một vài truy vấn đặc thù dễ dàng hơn nhiều so với việc tìm cách ép buộc một mối quan hệ eager hoạt động kiểu lazy.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-147', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is the N+1 query problem?', 'Vấn đề truy vấn N+1 (N+1 query problem) là gì?', 'The **N+1 query problem** occurs when an application executes 1 query to fetch a parent entity (or a list of parent entities) and then executes `N` additional queries to fetch the associated child entities for each of the `N` parents returned.

### Example Scenario
Suppose you have a `Book` entity, and each book has a `@ManyToOne` relationship with an `Author` entity.

1. The application executes **1 query** to fetch the 10 books:
   ```sql
   SELECT * FROM book; -- Returns 10 books (N = 10)
   ```
2. Loop through the 10 books to print the author''s name:
   ```java
   for (Book book : books) {
       System.out.println(book.getAuthor().getName());
   }
   ```
3. For each of the 10 books, if the relationship is lazy-loaded and not already in session cache, the ORM framework (Hibernate) executes a separate query to fetch the author details:
   ```sql
   SELECT * FROM author WHERE id = ?; -- Run 10 times (N times)
   ```

**Total Queries Executed**: `1 (initial query) + N (subsequent queries) = 11 queries`.

This is a major performance bottleneck, especially when N is large (e.g., listing 100 or 1000 records results in 101 or 1001 database trips).', '**Vấn đề truy vấn N+1 (N+1 query problem)** xảy ra khi ứng dụng thực thi 1 truy vấn ban đầu để lấy thực thể cha (hoặc danh sách thực thể cha), sau đó chạy thêm `N` truy vấn bổ sung để lấy các thực thể con liên quan cho mỗi thực thể trong số `N` thực thể cha đã trả về.

### Kịch bản ví dụ
Giả sử bạn có thực thể `Book` (Sách) và mỗi cuốn sách liên kết `@ManyToOne` với một `Author` (Tác giả).

1. Ứng dụng thực hiện **1 truy vấn** để lấy 10 cuốn sách:
   ```sql
   SELECT * FROM book; -- Trả về 10 cuốn sách (N = 10)
   ```
2. Lặp qua danh sách 10 cuốn sách để in ra tên tác giả:
   ```java
   for (Book book : books) {
       System.out.println(book.getAuthor().getName());
   }
   ```
3. Đối với mỗi cuốn sách trong số 10 cuốn, nếu mối quan hệ là lazy-loaded và chưa có sẵn trong session cache, ORM framework (Hibernate) sẽ thực hiện một câu truy vấn riêng biệt để lấy thông tin tác giả:
   ```sql
   SELECT * FROM author WHERE id = ?; -- Chạy 10 lần (N lần)
   ```

**Tổng số truy vấn**: `1 (truy vấn cha) + N (truy vấn con) = 11 truy vấn`.

Đây là một nút thắt cổ chai hiệu năng nghiêm trọng, đặc biệt khi N lớn (ví dụ: truy vấn 100 hay 1000 bản ghi sẽ tạo ra 101 hay 1001 lần gọi tới cơ sở dữ liệu).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-148', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'How can the N+1 query problem be solved?', 'Làm thế nào để giải quyết vấn đề truy vấn N+1?', 'The N+1 query problem can be resolved using several techniques in JPA/Hibernate:

1. **Fetch Join (JPQL / Criteria API)**:
   * Instructs Hibernate to load the parent and associated entities in a single database query using an inner or outer join.
   * **JPQL Example**: `SELECT b FROM Book b JOIN FETCH b.author`

2. **Entity Graphs (`@EntityGraph`)**:
   * Introduced in JPA 2.1, it allows specifying which associations should be fetched eagerly for a specific query directly on Spring Data JPA repositories.
   * **Example**:
     ```java
     @EntityGraph(attributePaths = {"author"})
     List<Book> findAll();
     ```

3. **Hibernate Batch Fetching (`@BatchSize`)**:
   * Instead of fetching children one by one, Hibernate loads them in batches using a `SELECT ... WHERE id IN (...)` statement.
   * **Example**: Placing `@BatchSize(size = 20)` on the collection or target entity class.

4. **DTO Projection**:
   * Query only the required fields directly into a DTO. This avoids loading entities entirely and automatically generates optimized SQL joins.
   * **Example**: `SELECT new com.example.BookDto(b.title, a.name) FROM Book b JOIN b.author a`', 'Vấn đề truy vấn N+1 có thể được giải quyết bằng một số kỹ thuật sau trong JPA/Hibernate:

1. **Fetch Join (JPQL / Criteria API)**:
   * Yêu cầu Hibernate tải thực thể cha và các thực thể liên kết liên quan trong một câu truy vấn duy nhất bằng cách sử dụng phép JOIN (inner hoặc outer join).
   * **Ví dụ JPQL**: `SELECT b FROM Book b JOIN FETCH b.author`

2. **Entity Graph (`@EntityGraph`)**:
   * Được giới thiệu từ JPA 2.1, cho phép chỉ định mối quan hệ nào sẽ được tải eager cho một truy vấn cụ thể trực tiếp trên Spring Data JPA repository.
   * **Ví dụ**:
     ```java
     @EntityGraph(attributePaths = {"author"})
     List<Book> findAll();
     ```

3. **Batch Fetching trong Hibernate (`@BatchSize`)**:
   * Thay vì tải các thực thể con từng cái một, Hibernate sẽ tải chúng theo từng lô (batch) bằng cách sử dụng mệnh đề `SELECT ... WHERE id IN (...)`.
   * **Ví dụ**: Đặt `@BatchSize(size = 20)` trên tập hợp (collection) hoặc class thực thể đích.

4. **DTO Projection**:
   * Viết truy vấn để lấy trực tiếp các trường dữ liệu cần thiết đưa vào một đối tượng DTO. Phương pháp này tránh tải toàn bộ thực thể và tự động tạo ra SQL JOIN tối ưu.
   * **Ví dụ**: `SELECT new com.example.BookDto(b.title, a.name) FROM Book b JOIN b.author a`', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-149', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is a fetch join?', 'Fetch join là gì?', 'A **fetch join** is a query-level directive in JPQL or HQL that instructs the persistence provider (like Hibernate) to initialize an associated relationship (a collection or a single-valued association) eagerly in the same SQL query, overriding any default lazy fetching configuration.

### Syntax
```sql
SELECT c FROM Company c JOIN FETCH c.employees
```

### Key Characteristics
1. **Database Level**: It generates a SQL `JOIN` (usually `INNER JOIN` or `LEFT OUTER JOIN`) to retrieve both the primary entity and the associated entities in a single result set.
2. **Application Level**: Hibernate processes the result set and populates the parent entity''s collection or association directly, avoiding any additional queries (resolving the N+1 problem).
3. **Difference from regular `JOIN`**:
   * A **regular `JOIN`** only filters the query results based on the relationship but does *not* populate the child entities in the parent object. Accessing the collection afterward still triggers a lazy loading query.
   * A **`JOIN FETCH`** retrieves and populates the child collection/entity immediately in memory, allowing you to access it without further DB queries.', '**Fetch join** là một chỉ dẫn ở cấp độ truy vấn trong JPQL hoặc HQL để yêu cầu JPA provider (như Hibernate) khởi tạo và tải sẵn một mối quan hệ liên kết (collection hoặc thực thể đơn lẻ) ngay trong cùng một truy vấn SQL, ghi đè lên cấu hình lazy fetching mặc định.

### Cú pháp
```sql
SELECT c FROM Company c JOIN FETCH c.employees
```

### Các đặc điểm chính
1. **Cấp độ Cơ sở dữ liệu**: Nó tạo ra một câu lệnh SQL `JOIN` (thường là `INNER JOIN` hoặc `LEFT OUTER JOIN`) để lấy cả thực thể chính và thực thể liên quan trong một tập kết quả duy nhất.
2. **Cấp độ Ứng dụng**: Hibernate xử lý kết quả trả về và gán trực tiếp dữ liệu vào collection hoặc thuộc tính liên kết của thực thể cha, tránh các truy vấn bổ sung (giải quyết triệt để lỗi N+1).
3. **Khác biệt với `JOIN` thông thường**:
   * Một câu lệnh **`JOIN` thông thường** chỉ lọc các kết quả truy vấn dựa trên mối quan hệ nhưng *không* nạp dữ liệu của các thực thể con vào thực thể cha. Nếu truy cập collection sau đó, truy vấn lazy loading vẫn bị kích hoạt.
   * Một câu lệnh **`JOIN FETCH`** truy xuất và nạp đầy dữ liệu cho collection/thực thể con ngay lập tức vào bộ nhớ, cho phép bạn truy cập mà không cần thêm truy vấn DB nào khác.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-150', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is cascade in JPA?', 'Cascade trong JPA là gì?', 'In JPA, **cascading** refers to the ability to propagate (cascade) state transitions from a parent entity to its associated child entities.

When you perform an operation (like save, delete, merge) on a parent entity, configuring cascades ensures the same operation is automatically applied to its related child entities.

### Cascade Types (`CascadeType` enum)
1. **`PERSIST`**: When the parent is saved (`persist()`), transient child entities are also saved.
2. **`MERGE`**: When the parent is updated/merged (`merge()`), the state of the associated entities is also updated.
3. **`REMOVE`**: When the parent is deleted (`remove()`), all associated child entities are deleted too.
4. **`REFRESH`**: Reloads the state of both parent and children from the database.
5. **`DETACH`**: Detaches both parent and associated entities from the persistence context (Session).
6. **`ALL`**: Shortcut for applying all the above cascade operations.

### Example Usage:
```java
@Entity
public class Order {
    @Id
    private Long id;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderItem> items = new ArrayList<>();
}
```', 'Trong JPA, **cascading** (lan truyền trạng thái) là khả năng chuyển tiếp tự động các thay đổi trạng thái từ một thực thể cha sang các thực thể con liên quan của nó.

Khi bạn thực hiện một thao tác (như lưu, xóa, cập nhật) trên thực thể cha, việc cấu hình cascade đảm bảo thao tác đó cũng tự động được áp dụng cho các thực thể con liên kết.

### Các loại Cascade (`CascadeType` enum)
1. **`PERSIST`**: Khi thực thể cha được lưu (`persist()`), các thực thể con chưa được quản lý (transient) cũng được lưu theo.
2. **`MERGE`**: Khi thực thể cha được cập nhật/hợp nhất (`merge()`), trạng thái của các thực thể liên quan cũng được cập nhật.
3. **`REMOVE`**: Khi thực thể cha bị xóa (`remove()`), tất cả thực thể con liên quan cũng bị xóa theo.
4. **`REFRESH`**: Tải lại trạng thái của cả thực thể cha và thực thể con từ cơ sở dữ liệu.
5. **`DETACH`**: Tách (detach) cả thực thể cha và thực thể con ra khỏi persistence context (Session).
6. **`ALL`**: Phím tắt để áp dụng tất cả các thao tác cascade nêu trên.

### Ví dụ sử dụng:
```java
@Entity
public class Order {
    @Id
    private Long id;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderItem> items = new ArrayList<>();
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-151', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is orphanRemoval?', 'orphanRemoval là gì?', '`orphanRemoval` is an attribute of `@OneToMany` and `@OneToOne` annotations in JPA. When set to `true`, it automatically deletes child entities from the database when they are dissociated/removed from their parent entity''s collection or reference.

### Key Difference from `CascadeType.REMOVE`
* **`CascadeType.REMOVE`**: If you delete the **parent** entity, the associated **child** entities are deleted. However, if you simply remove a child from the parent''s collection (`parent.getChildren().remove(child)`), the child remains in the database (it becomes an "orphan" with its foreign key set to null or orphaned).
* **`orphanRemoval = true`**: Acts exactly like `CascadeType.REMOVE` when deleting the parent. But additionally, if you disconnect a child from the parent (e.g., by removing it from the list), JPA will automatically issue a SQL `DELETE` query to delete the child from the database.

### Example:
```java
@OneToMany(mappedBy = "post", orphanRemoval = true, cascade = CascadeType.ALL)
private List<Comment> comments = new ArrayList<>();

// Triggering orphanRemoval:
post.getComments().remove(0); // This comment is automatically deleted from the database
```', '`orphanRemoval` là một thuộc tính trong các annotation `@OneToMany` và `@OneToOne` của JPA. Khi được thiết lập là `true`, nó sẽ tự động xóa các thực thể con khỏi cơ sở dữ liệu khi chúng bị ngắt liên kết hoặc loại bỏ khỏi collection/tham chiếu của thực thể cha.

### Khác biệt chính so với `CascadeType.REMOVE`
* **`CascadeType.REMOVE`**: Nếu bạn xóa thực thể **cha**, các thực thể **con** liên quan sẽ bị xóa theo. Tuy nhiên, nếu bạn chỉ xóa một thực thể con khỏi collection của thực thể cha (`parent.getChildren().remove(child)`), thực thể con đó vẫn tồn tại trong DB (nó trở thành một bản ghi mồ côi - "orphan").
* **`orphanRemoval = true`**: Có hành vi tương tự như `CascadeType.REMOVE` khi thực thể cha bị xóa. Ngoài ra, nếu bạn ngắt kết nối thực thể con khỏi thực thể cha (ví dụ: xóa nó khỏi list), JPA sẽ tự động phát sinh câu lệnh SQL `DELETE` để xóa hoàn toàn thực thể con đó khỏi cơ sở dữ liệu.

### Ví dụ:
```java
@OneToMany(mappedBy = "post", orphanRemoval = true, cascade = CascadeType.ALL)
private List<Comment> comments = new ArrayList<>();

// Kích hoạt orphanRemoval:
post.getComments().remove(0); // Bình luận này sẽ bị xóa khỏi cơ sở dữ liệu tự động
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-152', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What is the difference between JPQL and native SQL?', 'Sự khác biệt giữa JPQL và native SQL là gì?', 'Both JPQL and native SQL are used to query databases in Java applications, but they operate at different levels of abstraction.

### Comparison Table
| Feature | JPQL (Java Persistence Query Language) | Native SQL |
| :--- | :--- | :--- |
| **Target of Query** | Java Class Model (Entities and their attributes) | Relational Database Model (Tables and columns) |
| **Portability** | High database independence. JPA translates JPQL to target database dialect. | Database-dependent. Bound to the specific DB syntax (e.g., PostgreSQL, Oracle). |
| **Syntax Example** | `SELECT u.email FROM User u WHERE u.age > 18` | `SELECT email FROM users WHERE age > 18` |
| **OOP Features** | Supports inheritance, polymorphism, and association path navigation. | Does not support OOP concepts. Operates purely on relational algebra. |
| **DB Optimizations** | Limited to standard SQL features. Hard to use DB-specific keywords. | Full support for DB-specific syntax (e.g., CTE, Window functions, JSON operators). |
| **Return Type** | Returns managed Entities or projection DTOs by default. | Returns raw `Object[]` or requires explicit result mapping (`@SqlResultSetMapping`). |', 'Cả JPQL và native SQL đều được sử dụng để truy vấn cơ sở dữ liệu trong các ứng dụng Java, nhưng chúng hoạt động ở các mức độ trừu tượng khác nhau.

### Bảng so sánh chi tiết
| Đặc trưng | JPQL (Java Persistence Query Language) | Native SQL |
| :--- | :--- | :--- |
| **Đối tượng truy vấn** | Mô hình lớp Java (Thực thể và thuộc tính) | Mô hình CSDL quan hệ (Bảng và cột) |
| **Tính di động** | Tính độc lập cao. JPA dịch JPQL sang SQL dialect tương ứng của database. | Phụ thuộc vào database. Bị ràng buộc bởi cú pháp DB cụ thể (ví dụ: PostgreSQL, Oracle). |
| **Ví dụ cú pháp** | `SELECT u.email FROM User u WHERE u.age > 18` | `SELECT email FROM users WHERE age > 18` |
| **Tính năng OOP** | Hỗ trợ kế thừa, đa hình và điều hướng qua đường dẫn thực thể. | Không hỗ trợ khái niệm OOP. Hoạt động thuần túy trên đại số quan hệ. |
| **Tối ưu hóa DB** | Bị hạn chế ở các tính năng SQL chuẩn. Khó dùng từ khóa đặc thù DB. | Hỗ trợ đầy đủ các tính năng đặc thù (như CTE, Window functions, toán tử JSON). |
| **Kiểu dữ liệu trả về** | Trả về thực thể được quản lý hoặc DTO projection mặc định. | Trả về `Object[]` thô hoặc yêu cầu ánh xạ kết quả rõ ràng (`@SqlResultSetMapping`). |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-153', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is Spring Data JPA?', 'Spring Data JPA là gì?', '**Spring Data JPA** is a library that belongs to the Spring Data umbrella project. It provides an abstraction layer on top of JPA (Java Persistence API) to significantly reduce the amount of boilerplate code required to implement data access layers (DAOs).

### Key Features
1. **Repository Abstraction**: You only need to define interfaces extending interfaces like `JpaRepository` or `CrudRepository`. Spring Data JPA automatically generates the implementation class at runtime.
2. **Query Methods**: Automatically derives SQL queries from method names (e.g., `findByEmailAddressAndLastname(String email, String lastname)`).
3. **Pagination and Sorting**: Provides built-in support for paginated queries and sorting through `Pageable` and `Sort` parameters.
4. **Integration with Custom Queries**: Easily define custom JPQL, HQL, or native SQL queries using the `@Query` annotation.
5. **Dynamic Queries**: Supports Specification-based queries or Querydsl integration for constructing dynamic search filters.

> [!NOTE]
> Spring Data JPA is not a JPA provider itself. It is a wrapper that uses a JPA provider (typically Hibernate) underneath to perform the actual persistence operations.', '**Spring Data JPA** là một thư viện thuộc dự án Spring Data. Nó cung cấp một lớp trừu tượng (abstraction layer) bên trên JPA (Java Persistence API) nhằm giảm thiểu đáng kể lượng code mẫu (boilerplate code) cần thiết để triển khai lớp truy cập dữ liệu (DataAccess Layer - DAO).

### Các tính năng chính
1. **Trừu tượng hóa Repository**: Bạn chỉ cần định nghĩa các interface kế thừa từ `JpaRepository` hoặc `CrudRepository`. Spring Data JPA sẽ tự động tạo lớp triển khai (implementation class) ở thời điểm runtime.
2. **Tự động tạo truy vấn (Query Methods)**: Tự động phân tích tên phương thức để tạo ra các truy vấn SQL tương ứng (ví dụ: `findByEmailAddressAndLastname(String email, String lastname)`).
3. **Phân trang và Sắp xếp**: Hỗ trợ sẵn việc phân trang và sắp xếp dữ liệu thông qua các tham số `Pageable` và `Sort`.
4. **Tích hợp truy vấn tùy chỉnh**: Dễ dàng khai báo các truy vấn JPQL, HQL hoặc native SQL bằng cách sử dụng annotation `@Query`.
5. **Truy vấn động**: Hỗ trợ xây dựng các câu truy vấn động linh hoạt qua Specification hoặc tích hợp Querydsl.

> [!NOTE]

> Spring Data JPA không phải là một JPA provider độc lập. Nó là một thư viện bọc ngoài (wrapper) sử dụng một JPA provider (thường là Hibernate) chạy bên dưới để thực hiện các thao tác persistence thực tế.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-154', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is JpaRepository?', 'JpaRepository là gì?', '`JpaRepository` is a JPA-specific interface in Spring Data JPA that extends `PagingAndSortingRepository` and `QueryByExampleExecutor`. It serves as the primary interface for managing JPA entities.

### Interface Hierarchy
```
Repository (Core Spring Data)
  └── CrudRepository (Basic CRUD operations)
        └── PagingAndSortingRepository (Pagination & Sorting)
              └── JpaRepository (JPA-specific actions: flush, batch delete, etc.)
```

### Key Benefits & Capabilities
1. **Standard CRUD Actions**: Provides out-of-the-box methods like `save()`, `findById()`, `findAll()`, `deleteById()`, and `count()`.
2. **JPA Specifics**: Inherits methods like `flush()` (to force synchronization with the database), `saveAndFlush()`, `deleteInBatch()`, and `getReferenceById()` (which returns a lazy loading proxy instead of fetching the complete object).
3. **Type Safety**: It is defined as a generic: `JpaRepository<T, ID>`, where `T` is the Entity type and `ID` is the type of the entity''s primary key.', '`JpaRepository` là một interface đặc thù cho JPA trong Spring Data JPA, kế thừa từ `PagingAndSortingRepository` và `QueryByExampleExecutor`. Nó đóng vai trò là interface chính để quản lý và thao tác với các thực thể (entities) JPA.

### Sơ đồ kế thừa
```
Repository (Spring Data Core)
  └── CrudRepository (Các thao tác CRUD cơ bản)
        └── PagingAndSortingRepository (Hỗ trợ Phân trang & Sắp xếp)
              └── JpaRepository (Các hành động đặc thù JPA: flush, xóa hàng loạt, v.v.)
```

### Lợi ích và Khả năng chính
1. **Các thao tác CRUD chuẩn**: Cung cấp sẵn các phương thức như `save()`, `findById()`, `findAll()`, `deleteById()`, và `count()`.
2. **Các tính năng đặc thù JPA**: Kế thừa các phương thức như `flush()` (bắt buộc đồng bộ dữ liệu xuống DB ngay lập tức), `saveAndFlush()`, `deleteInBatch()`, và `getReferenceById()` (trả về một đối tượng proxy để lazy load thay vì tải toàn bộ đối tượng thực tế lên).
3. **An toàn kiểu dữ liệu (Type Safety)**: Được định nghĩa dưới dạng generic: `JpaRepository<T, ID>`, trong đó `T` là kiểu thực thể (Entity) và `ID` là kiểu dữ liệu của khóa chính (Primary Key).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-155', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'How are derived query methods created in Spring Data JPA?', 'Các phương thức truy vấn dẫn xuất (derived query methods) được tạo như thế nào trong Spring Data JPA?', 'Derived query methods in Spring Data JPA are created by declaring method signatures in a repository interface using a specific naming convention defined by the query builder mechanism. Spring Data JPA parses the method name and automatically generates the corresponding JPQL (and database-specific SQL) query at application startup.

### Structure & Naming Conventions
1. **Prefix**: The method name must start with a query prefix such as `find...By`, `read...By`, `query...By`, `count...By`, or `get...By`.
2. **Subject (Optional)**: Between the prefix and the `By` keyword, you can add descriptive terms (e.g., `findDistinctUsersBy` or `findFirst5By`).
3. **Predicate**: The part after `By` contains the property names of the entity, which act as the criteria.
4. **Logical Operators & Comparators**: You can combine multiple properties using logical operators like `And` and `Or`, and apply comparison keywords such as `Between`, `LessThan`, `GreaterThan`, `Like`, `Containing`, `IgnoreCase`, `IsNull`, or `True`.

### Example
```java
public interface UserRepository extends CrudRepository<User, Long> {
    // Finds users by their email address and lastname
    List<User> findByEmailAddressAndLastname(String emailAddress, String lastname);
    
    // Finds the top 10 active users containing a specific keyword in their username, case-insensitive
    List<User> findTop10ByUsernameContainingIgnoreCaseAndActiveTrue(String username);
}
```

### Key Points
* Parameter binding is positional: parameters must be declared in the method signature in the exact order they appear in the query criteria.
* Spring Data validates method names at application startup. If a property in the method name does not exist on the target entity, a `PropertyReferenceException` will be thrown, causing the context loading to fail.', 'Các phương thức truy vấn dẫn xuất (derived query methods) trong Spring Data JPA được tạo bằng cách khai báo các chữ ký phương thức (method signatures) trong một repository interface theo các quy tắc đặt tên cụ thể được định nghĩa bởi cơ chế dựng truy vấn (query builder). Spring Data JPA sẽ phân tích cú pháp tên phương thức và tự động tạo ra câu truy vấn JPQL (và SQL tương ứng) khi ứng dụng khởi chạy.

### Cấu trúc & Quy tắc đặt tên
1. **Tiền tố (Prefix)**: Tên phương thức phải bắt đầu bằng một tiền tố truy vấn như `find...By`, `read...By`, `query...By`, `count...By`, hoặc `get...By`.
2. **Chủ thể (Tùy chọn)**: Giữa tiền tố và từ khóa `By`, bạn có thể thêm các từ mô tả (ví dụ: `findDistinctUsersBy` hoặc `findFirst5By`).
3. **Vị ngữ (Predicate)**: Phần sau `By` chứa tên các thuộc tính của Entity, đóng vai trò là điều kiện lọc.
4. **Toán tử Logic & Từ khóa So sánh**: Bạn có thể kết hợp nhiều thuộc tính bằng các toán tử logic như `And` và `Or`, và áp dụng các từ khóa so sánh như `Between`, `LessThan`, `GreaterThan`, `Like`, `Containing`, `IgnoreCase`, `IsNull`, hoặc `True`.

### Ví dụ
```java
public interface UserRepository extends CrudRepository<User, Long> {
    // Tìm kiếm user theo địa chỉ email và tên cuối
    List<User> findByEmailAddressAndLastname(String emailAddress, String lastname);
    
    // Tìm 10 user hoạt động đầu tiên có chứa từ khóa trong username (không phân biệt hoa thường)
    List<User> findTop10ByUsernameContainingIgnoreCaseAndActiveTrue(String username);
}
```

### Điểm lưu ý quan trọng
* Việc liên kết tham số (parameter binding) dựa theo vị trí: các tham số phải được khai báo trong chữ ký phương thức theo đúng thứ tự mà chúng xuất hiện trong điều kiện truy vấn.
* Spring Data sẽ kiểm tra tính hợp lệ của tên phương thức ngay khi ứng dụng khởi động. Nếu thuộc tính trong tên phương thức không tồn tại trong Entity tương ứng, ứng dụng sẽ ném ra ngoại lệ `PropertyReferenceException` và không khởi động được.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-156', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is @Query used for?', 'Annotation @Query được sử dụng để làm gì?', 'The `@Query` annotation in Spring Data JPA is used to define custom JPQL (Java Persistence Query Language) or native SQL queries directly on repository methods. While derived query methods are convenient, `@Query` is preferred when queries become too complex, require complex joins, aggregation, subqueries, or demand database-specific SQL features.

### Key Features
1. **JPQL by Default**: Write object-oriented queries targeting Entity classes and fields instead of database tables and columns.
2. **Native SQL**: Execute raw database queries by setting `nativeQuery = true` inside the annotation.
3. **Parameter Binding**:
   * **Named Parameters**: Binding parameters using `:paramName` along with the `@Param("paramName")` annotation in the method signature (highly recommended for readability).
   * **Positional Parameters**: Binding parameters using index markers like `?1`, `?2` based on the method argument positions.
4. **Modification Queries**: Combine with `@Modifying` for performing INSERT, UPDATE, or DELETE statements.

### Example
```java
public interface UserRepository extends JpaRepository<User, Long> {
    // JPQL Query with Named Parameters
    @Query("SELECT u FROM User u WHERE u.status = :status AND u.email LIKE :emailDomain")
    List<User> findActiveUsers(@Param("status") Integer status, @Param("emailDomain") String emailDomain);

    // Native SQL Query
    @Query(value = "SELECT * FROM users u WHERE u.created_at >= NOW() - INTERVAL ''1 DAY''", nativeQuery = true)
    List<User> findNewUsersFromPastDay();
}
```', 'Annotation `@Query` trong Spring Data JPA được sử dụng để định nghĩa các truy vấn JPQL (Java Persistence Query Language) hoặc SQL thuần túy (native query) tùy chỉnh trực tiếp trên các phương thức của repository. Mặc dù các phương thức truy vấn dẫn xuất (derived query) rất tiện lợi, `@Query` là lựa chọn tối ưu khi câu truy vấn trở nên quá phức tạp, cần thực hiện các phép kết hợp phức tạp (joins), tổng hợp (aggregation), truy vấn con (subqueries), hoặc khi cần sử dụng các tính năng SQL đặc thù của hệ quản trị cơ sở dữ liệu.

### Các tính năng chính
1. **Mặc định là JPQL**: Viết các truy vấn hướng đối tượng nhắm vào các lớp Entity và các trường của chúng thay vì bảng và cột thực tế trong cơ sở dữ liệu.
2. **Native SQL**: Thực thi các truy vấn SQL thuần túy bằng cách đặt thuộc tính `nativeQuery = true`.
3. **Liên kết tham số (Parameter Binding)**:
   * **Tham số đặt tên (Named Parameters)**: Truyền tham số bằng cú pháp `:paramName` kết hợp với annotation `@Param("paramName")` trên chữ ký phương thức (khuyến khích sử dụng để tăng tính rõ ràng).
   * **Tham số theo vị trí (Positional Parameters)**: Truyền tham số theo các chỉ mục như `?1`, `?2` dựa trên thứ tự đối số của phương thức.
4. **Truy vấn thay đổi dữ liệu (Modification Queries)**: Kết hợp với `@Modifying` khi thực hiện các câu lệnh INSERT, UPDATE, hoặc DELETE.

### Ví dụ
```java
public interface UserRepository extends JpaRepository<User, Long> {
    // Truy vấn JPQL sử dụng Named Parameter
    @Query("SELECT u FROM User u WHERE u.status = :status AND u.email LIKE :emailDomain")
    List<User> findActiveUsers(@Param("status") Integer status, @Param("emailDomain") String emailDomain);

    // Truy vấn Native SQL
    @Query(value = "SELECT * FROM users u WHERE u.created_at >= NOW() - INTERVAL ''1 DAY''", nativeQuery = true)
    List<User> findNewUsersFromPastDay();
}
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-157', 'Spring Transactions', 'Spring Transactions', 'Junior', 'What is a database transaction?', 'Giao dịch cơ sở dữ liệu (database transaction) là gì?', 'A database transaction is a logical unit of work that contains one or more database operations (such as SQL statements: INSERT, UPDATE, DELETE, or SELECT) which must be executed in a completely reliable, isolated, and atomized manner.

### Key Characteristics
* **Indivisibility**: A transaction acts as a single, atomic operation. The database guarantees that all statements within the transaction are executed and finalized together.
* **Outcome Commit vs. Rollback**:
  * **Commit**: If all statements within the transaction execute successfully, the changes are saved permanently to the database.
  * **Rollback**: If any error, system failure, or validation issue occurs during execution, all changes made since the start of the transaction are discarded, returning the database to its pre-transaction state.

### Real-world Analogy
Consider a bank transfer from Account A to Account B. This transaction consists of two operations:
1. Deduct money from Account A.
2. Add money to Account B.
If operation 1 succeeds but operation 2 fails due to a network error, the transaction must roll back. If it doesn''t, Account A will lose money and Account B will not receive it, resulting in data inconsistency.', 'Một giao dịch cơ sở dữ liệu (database transaction) là một đơn vị công việc logic chứa một hoặc nhiều thao tác cơ sở dữ liệu (chẳng hạn như các câu lệnh SQL: INSERT, UPDATE, DELETE, hoặc SELECT) và phải được thực hiện theo cách hoàn toàn đáng tin cậy, cô lập và nguyên tử.

### Các đặc điểm chính
* **Tính không thể chia cắt**: Một giao dịch hoạt động như một thao tác nguyên tử đơn lẻ. Hệ quản trị cơ sở dữ liệu đảm bảo rằng tất cả các câu lệnh bên trong giao dịch được thực hiện và hoàn tất cùng nhau.
* **Kết quả Commit so với Rollback**:
  * **Commit**: Nếu toàn bộ các câu lệnh trong giao dịch được thực thi thành công, tất cả các thay đổi sẽ được lưu trữ vĩnh viễn vào cơ sở dữ liệu.
  * **Rollback**: Nếu xảy ra bất kỳ lỗi hệ thống, lỗi kết nối hoặc vi phạm ràng buộc nghiệp vụ nào trong quá trình thực thi, tất cả các thay đổi từ thời điểm bắt đầu giao dịch sẽ bị hủy bỏ, đưa cơ sở dữ liệu trở lại trạng thái ban đầu trước khi giao dịch bắt đầu.

### Ví dụ thực tế
Hãy xem xét một giao dịch chuyển tiền từ Tài khoản A sang Tài khoản B. Giao dịch này bao gồm hai thao tác:
1. Trừ tiền ở Tài khoản A.
2. Cộng tiền vào Tài khoản B.
Nếu thao tác 1 thành công nhưng thao tác 2 thất bại do lỗi mạng, toàn bộ giao dịch phải được rollback. Nếu không rollback, Tài khoản A sẽ bị mất tiền còn Tài khoản B không nhận được gì, dẫn đến dữ liệu không nhất quán.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-158', 'Spring Transactions', 'Spring Transactions', 'Mid', 'What are the ACID properties?', 'Các thuộc tính ACID là gì?', 'The ACID properties are a set of four core principles that guarantee database transactions are processed reliably, maintaining data integrity even in the event of errors, crashes, or concurrent executions.

### The ACID Properties
1. **Atomicity (Atomicity)**:
   * **Concept**: The "all-or-nothing" principle. A transaction must be executed in its entirety or not at all. If any statement within the transaction fails, the entire transaction is aborted and rolled back, leaving the database unchanged.
2. **Consistency (Tính nhất quán)**:
   * **Concept**: A transaction must transition the database from one valid state to another valid state, maintaining all schema constraints, rules, triggers, and foreign keys. No partial or illegal states should ever persist.
3. **Isolation (Tính cô lập)**:
   * **Concept**: Concurrent execution of transactions must yield the same database state as if they were executed sequentially. One transaction''s uncommitted intermediate changes cannot be seen by other concurrent transactions, preventing race conditions and read anomalies.
4. **Durability (Tính bền vững)**:
   * **Concept**: Once a transaction is successfully committed, its changes are written to non-volatile storage (such as a disk) and persist permanently. These modifications will not be lost even in the event of subsequent system crashes, power failures, or server reboots.', 'Các thuộc tính ACID là một tập hợp gồm bốn nguyên tắc cốt lõi nhằm đảm bảo các giao dịch cơ sở dữ liệu được xử lý một cách đáng tin cậy, duy trì tính toàn vẹn của dữ liệu ngay cả khi xảy ra lỗi, sập nguồn hoặc thực thi đồng thời.

### Chi tiết các thuộc tính ACID
1. **Atomicity (Tính nguyên tử)**:
   * **Khái niệm**: Nguyên tắc "tất cả hoặc không có gì". Một giao dịch phải được thực thi hoàn toàn hoặc không thực thi phần nào cả. Nếu bất kỳ câu lệnh nào trong giao dịch thất bại, toàn bộ giao dịch sẽ bị hủy bỏ và rollback, đưa dữ liệu trở lại trạng thái trước khi chạy.
2. **Consistency (Tính nhất quán)**:
   * **Khái niệm**: Một giao dịch phải chuyển đổi cơ sở dữ liệu từ trạng thái hợp lệ này sang trạng thái hợp lệ khác, tuân thủ tất cả ràng buộc schema, quy tắc toàn vẹn, trigger và khóa ngoại. Không có dữ liệu không hợp lệ hoặc dữ liệu trung gian nào được lưu lại vĩnh viễn.
3. **Isolation (Tính cô lập)**:
   * **Khái niệm**: Việc thực thi đồng thời các giao dịch phải mang lại kết quả dữ liệu giống như khi chúng được thực hiện một cách tuần tự. Các thay đổi tạm thời chưa commit của một giao dịch sẽ không thể bị nhìn thấy bởi các giao dịch song song khác, tránh tranh chấp dữ liệu (race conditions).
4. **Durability (Tính bền vững)**:
   * **Khái niệm**: Một khi giao dịch đã được commit thành công, các thay đổi sẽ được ghi vào bộ nhớ không bay hơi (như đĩa cứng) và lưu trữ vĩnh viễn. Những thay đổi này không thể bị mất ngay cả khi hệ thống bị sập, mất điện hay khởi động lại máy chủ ngay sau đó.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-159', 'Spring Transactions', 'Spring Transactions', 'Mid', 'What does @Transactional do?', 'Annotation @Transactional làm nhiệm vụ gì?', 'The `@Transactional` annotation in Spring is used to implement **declarative transaction management** on classes or methods. It leverages Spring AOP (Aspect-Oriented Programming) to manage database transactions without requiring developers to write boilerplate JDBC transaction code.

### How it Works Under the Hood
1. **Proxy Creation**: When a bean annotated with `@Transactional` is initialized, Spring creates a dynamic proxy around it.
2. **Interception**: When a client calls a method on the bean, the proxy intercepts the call.
3. **Transaction Initiation**: The proxy talks to the `PlatformTransactionManager` to open a new transaction and bind a database connection to the current thread context.
4. **Method Execution**: The target method executes within the active transaction context.
5. **Completion Handler**:
   * If the method completes successfully, the proxy commits the transaction and releases the connection.
   * If an unchecked exception (`RuntimeException` or `Error`) is thrown, the proxy automatically rolls back the transaction and releases the connection.

### Key Attributes
* `propagation`: Defines how transactions propagate (e.g., `REQUIRED`, `REQUIRES_NEW`).
* `isolation`: Sets the isolation level of the database transaction.
* `readOnly`: Optimizes transaction execution for read-only operations.
* `rollbackFor` / `noRollbackFor`: Customizes which exception types trigger a rollback.', 'Annotation `@Transactional` trong Spring được sử dụng để thực hiện **quản lý giao dịch một cách khai báo** (declarative transaction management) trên các class hoặc phương thức. Nó tận dụng kỹ thuật Spring AOP (Aspect-Oriented Programming) để tự động quản lý các giao dịch cơ sở dữ liệu mà không yêu cầu lập trình viên phải viết code JDBC boilerplate thủ công.

### Cơ chế hoạt động bên dưới
1. **Tạo Proxy**: Khi một bean được đánh dấu bằng `@Transactional` được khởi tạo, Spring sẽ tạo ra một proxy động (dynamic proxy) bao quanh bean đó.
2. **Đánh chặn (Interception)**: Khi client gọi phương thức của bean, proxy sẽ đánh chặn cuộc gọi đó.
3. **Khởi tạo Giao dịch**: Proxy giao tiếp với `PlatformTransactionManager` để mở một giao dịch mới và gắn kết một kết nối cơ sở dữ liệu (database connection) vào luồng thực thi (thread context).
4. **Thực thi phương thức**: Phương thức thực tế được thực thi bên trong ngữ cảnh giao dịch đang hoạt động.
5. **Xử lý Hoàn tất**:
   * Nếu phương thức thực thi thành công, proxy tiến hành commit giao dịch và giải phóng kết nối.
   * Nếu một ngoại lệ runtime (unchecked exception như `RuntimeException` hoặc `Error`) bị ném ra, proxy sẽ tự động rollback giao dịch và giải phóng kết nối.

### Các thuộc tính quan trọng
* `propagation`: Định nghĩa cách lan truyền giao dịch (ví dụ: `REQUIRED`, `REQUIRES_NEW`).
* `isolation`: Thiết lập mức độ cô lập của giao dịch cơ sở dữ liệu.
* `readOnly`: Tối ưu hóa việc thực thi giao dịch đối với các thao tác chỉ đọc.
* `rollbackFor` / `noRollbackFor`: Tùy chỉnh những loại ngoại lệ nào sẽ kích hoạt hoặc bỏ qua việc rollback.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-160', 'Spring Transactions', 'Spring Transactions', 'Mid', 'Why should transaction boundaries usually be placed in the service layer?', 'Tại sao ranh giới giao dịch (transaction boundaries) thường nên đặt ở tầng Service?', 'Transaction boundaries (typically configured using `@Transactional`) should be placed in the Service layer rather than the Web (Controller) or Repository (DAO) layers due to the following architectural reasons:

### 1. Representing a Logical Unit of Work
A single service method often corresponds to a complete business use case (e.g., `placeOrder()`). This single use case might require calling multiple repository methods (e.g., `inventoryRepository.decreaseStock()`, `orderRepository.save()`, and `userRepository.deductBalance()`). All of these repository calls must succeed or fail as a single atomic unit. Placing `@Transactional` on the service method guarantees this.

### 2. Separation of Concerns & Reusability
* **Repository Layer**: Should be generic, atomic, and focused only on CRUD operations for a single entity type. If you place transaction boundaries on repositories, you cannot easily combine multiple repository calls into a single business transaction.
* **Controller Layer**: Should be concerned with HTTP protocols, input validation, and rendering views. It should not contain business logic or transaction boundaries.

### 3. Connection Pool Optimization
Starting a transaction too early (e.g., in the Controller or Filter) holds database connections for too long, leading to connection starvation under high traffic. Starting it in the Service layer ensures that a database connection is only acquired when the business logic execution starts and is released as soon as it completes.', 'Ranh giới giao dịch (thường được cấu hình bằng `@Transactional`) nên được đặt ở tầng Service thay vì tầng Web (Controller) hay Repository (DAO) vì những lý do kiến trúc sau đây:

### 1. Đại diện cho một Đơn vị công việc logic (Unit of Work)
Một phương thức service duy nhất thường tương ứng với một trường hợp sử dụng nghiệp vụ hoàn chỉnh (ví dụ: `placeOrder()`). Trường hợp sử dụng này có thể cần phải gọi nhiều phương thức từ các repository khác nhau (ví dụ: `inventoryRepository.decreaseStock()`, `orderRepository.save()`, và `userRepository.deductBalance()`). Tất cả các cuộc gọi repository này phải cùng thành công hoặc cùng thất bại như một khối nguyên tử duy nhất. Việc đặt `@Transactional` trên phương thức service đảm bảo điều này.

### 2. Phân tách Trách nhiệm & Tái sử dụng
* **Tầng Repository**: Nên mang tính tổng quát, độc lập và chỉ tập trung vào các thao tác CRUD cơ bản cho một loại Entity. Nếu bạn đặt ranh giới giao dịch ở repository, bạn sẽ không thể kết hợp nhiều hoạt động repository vào một giao dịch nghiệp vụ duy nhất một cách dễ dàng.
* **Tầng Controller**: Chỉ nên quan tâm đến giao thức HTTP, xác thực đầu vào và phản hồi dữ liệu. Nó không nên chứa logic nghiệp vụ hay quản lý giao dịch.

### 3. Tối ưu hóa Connection Pool
Việc mở giao dịch quá sớm (ví dụ: ở Controller hoặc Filter) sẽ chiếm giữ kết nối cơ sở dữ liệu quá lâu, dẫn đến cạn kiệt kết nối (connection starvation) khi có lưu lượng truy cập cao. Việc mở giao dịch ở tầng Service đảm bảo kết nối cơ sở dữ liệu chỉ được lấy khi bắt đầu thực thi logic nghiệp vụ và được giải phóng ngay sau khi kết thúc.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-161', 'Spring Transactions', 'Spring Transactions', 'Mid', 'What happens when a RuntimeException is thrown inside a @Transactional method?', 'Điều gì xảy ra khi một ngoại lệ RuntimeException bị ném ra bên trong một phương thức có @Transactional?', 'When a `RuntimeException` (or any of its subclasses, as well as `Error`) is thrown inside a `@Transactional` method and propagates out of the method scope, Spring''s transaction manager intercepts this exception and automatically triggers a **rollback** of the transaction.

### Default Rollback Rules in Spring
* **Unchecked Exceptions (`RuntimeException` and `Error`)**: Trigger rollback automatically. Examples: `NullPointerException`, `IllegalArgumentException`, `OutOfMemoryError`.
* **Checked Exceptions (subclasses of `Exception` but not `RuntimeException`)**: Do **not** trigger rollback by default. The transaction will still commit even if a checked exception is thrown. Examples: `IOException`, `SQLException`.

### Customizing the Behavior
You can customize this behavior using the properties of the `@Transactional` annotation:
* **Force rollback for checked exceptions**:
  ```java
  @Transactional(rollbackFor = Exception.class) // Rollback for all exceptions
  ```
* **Prevent rollback for specific runtime exceptions**:
  ```java
  @Transactional(noRollbackFor = CustomNonFatalException.class)
  ```', 'Khi một ngoại lệ `RuntimeException` (hoặc bất kỳ lớp con nào của nó, cũng như `Error`) bị ném ra bên trong một phương thức `@Transactional` và lan truyền ra ngoài phạm vi của phương thức đó, bộ quản lý giao dịch của Spring sẽ bắt ngoại lệ này và tự động thực hiện **rollback** giao dịch.

### Quy tắc Rollback mặc định của Spring
* **Unchecked Exceptions (`RuntimeException` và `Error`)**: Tự động kích hoạt rollback. Ví dụ: `NullPointerException`, `IllegalArgumentException`, `OutOfMemoryError`.
* **Checked Exceptions (lớp con của `Exception` nhưng không kế thừa từ `RuntimeException`)**: Theo mặc định, **không** kích hoạt rollback. Giao dịch vẫn sẽ tiến hành commit bất chấp việc ngoại lệ này xảy ra. Ví dụ: `IOException`, `SQLException`.

### Tùy chỉnh hành vi
Bạn có thể thay đổi hành vi mặc định này bằng các thuộc tính của `@Transactional`:
* **Buộc rollback đối với checked exceptions**:
  ```java
  @Transactional(rollbackFor = Exception.class) // Rollback cho mọi loại ngoại lệ
  ```
* **Ngăn chặn rollback đối với ngoại lệ runtime cụ thể**:
  ```java
  @Transactional(noRollbackFor = CustomNonFatalException.class)
  ```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-162', 'Spring Transactions', 'Spring Transactions', 'Junior', 'What is transaction rollback?', 'Rollback giao dịch (transaction rollback) là gì?', 'Transaction rollback is the process of reversing all modifications made to the database during the currently active, uncommitted transaction. It ensures that the database is restored back to the exact consistent state it was in before the transaction started.

### Key Concepts
* **Reversal**: Every insert, update, or delete operation executed within the transaction scope is undone.
* **Implementation**: The Database Management System (DBMS) uses its write-ahead log (WAL) or undo tablespace/redo logs to identify and reverse the actions step-by-step.
* **Data Integrity**: Rollback is essential for preventing partial updates and ensuring the **Atomicity** property of ACID is preserved when an error, validation failure, or system crash occurs during execution.', 'Rollback giao dịch (transaction rollback) là quá trình hoàn tác toàn bộ các thay đổi được thực hiện đối với cơ sở dữ liệu trong suốt giao dịch đang hoạt động và chưa được commit. Nó đảm bảo cơ sở dữ liệu được khôi phục về đúng trạng thái nhất quán trước khi giao dịch bắt đầu.

### Các khái niệm cốt lõi
* **Hoàn tác**: Mọi câu lệnh insert, update, hoặc delete được thực thi trong phạm vi giao dịch đều sẽ bị xóa bỏ/phục hồi.
* **Cách thức thực hiện**: Hệ quản trị cơ sở dữ liệu (DBMS) sử dụng nhật ký ghi trước (Write-Ahead Log - WAL), phân vùng undo hoặc redo log để xác định và đảo ngược các hành động từng bước một.
* **Tính toàn vẹn dữ liệu**: Rollback đóng vai trò thiết yếu để ngăn chặn tình trạng dữ liệu bị cập nhật một phần và đảm bảo thuộc tính **Atomicity (Nguyên tử)** của ACID luôn được duy trì khi xảy ra lỗi, thất bại nghiệp vụ hoặc sập hệ thống.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-163', 'Spring Transactions', 'Spring Transactions', 'Senior', 'What is transaction propagation?', 'Lan truyền giao dịch (transaction propagation) là gì?', 'Transaction propagation defines how Spring manages the boundaries of a transaction when one transactional method calls another transactional method. In Spring, it is configured using the `propagation` attribute of the `@Transactional` annotation.

### Main Propagation Behaviors
1. **`REQUIRED`** (Default): Supports a current transaction; creates a new one if none exists. If the inner transaction fails, the outer transaction is marked as rollback-only.
2. **`REQUIRES_NEW`**: Suspends the current transaction and creates a new, independent transaction. The outer transaction commits/rolls back independently of the inner transaction''s outcome.
3. **`SUPPORTS`**: Executes within the current transaction context if it exists; otherwise, executes non-transactionally.
4. **`NOT_SUPPORTED`**: Always executes non-transactionally. If an active transaction exists, it is suspended for the duration of the method call.
5. **`MANDATORY`**: Must execute within an existing active transaction; otherwise, throws a `TransactionRequiredException`.
6. **`NEVER`**: Must execute non-transactionally; throws an exception if an active transaction exists.
7. **`NESTED`**: Executes within a nested transaction if an active transaction exists, utilizing database savepoints. If the nested transaction fails, it rolls back to the savepoint without affecting the outer transaction''s commit status. If no transaction exists, it behaves like `REQUIRED`.', 'Lan truyền giao dịch (transaction propagation) định nghĩa cách thức Spring quản lý ranh giới giao dịch khi một phương thức có giao dịch gọi một phương thức có giao dịch khác. Trong Spring, nó được cấu hình thông qua thuộc tính `propagation` của annotation `@Transactional`.

### Các kiểu lan truyền giao dịch chính
1. **`REQUIRED`** (Mặc định): Sử dụng giao dịch hiện tại nếu có; nếu không có, sẽ tạo một giao dịch mới. Nếu giao dịch con thất bại, toàn bộ giao dịch cha cũng bị đánh dấu là rollback-only.
2. **`REQUIRES_NEW`**: Tạm dừng giao dịch hiện tại (nếu có) và tạo ra một giao dịch độc lập mới. Kết quả commit/rollback của giao dịch ngoài không bị phụ thuộc vào giao dịch trong.
3. **`SUPPORTS`**: Thực thi trong giao dịch hiện tại nếu có; nếu không có, sẽ thực thi mà không cần giao dịch.
4. **`NOT_SUPPORTED`**: Luôn thực thi không cần giao dịch. Nếu có giao dịch hiện tại, giao dịch đó sẽ bị tạm dừng trong suốt thời gian gọi phương thức.
5. **`MANDATORY`**: Yêu cầu phải có giao dịch hiện tại đang hoạt động; nếu không có, hệ thống sẽ ném ra ngoại lệ `TransactionRequiredException`.
6. **`NEVER`**: Yêu cầu thực thi không cần giao dịch; ném ra ngoại lệ nếu phát hiện có giao dịch hiện tại đang hoạt động.
7. **`NESTED`**: Thực thi bên trong một giao dịch lồng nhau sử dụng các điểm lưu (savepoints) của cơ sở dữ liệu nếu có giao dịch hiện tại hoạt động. Giao dịch lồng nhau có thể rollback về savepoint của nó mà không làm ảnh hưởng đến giao dịch cha. Nếu không có giao dịch hiện tại, nó hoạt động tương tự như `REQUIRED`.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-164', 'Spring Transactions', 'Spring Transactions', 'Senior', 'What is transaction isolation?', 'Cô lập giao dịch (transaction isolation) là gì?', 'Transaction isolation defines the degree of visibility that one transaction has into the uncommitted changes made by other concurrent transactions. It is designed to prevent read anomalies when multiple clients access the same data simultaneously.

### Read Anomalies Prevented
* **Dirty Read**: Transaction A reads modifications made by Transaction B before Transaction B commits them. If Transaction B rolls back, Transaction A read garbage data.
* **Non-repeatable Read**: Transaction A reads a row. Transaction B updates the row and commits. Transaction A reads the row again and gets a different value.
* **Phantom Read**: Transaction A performs a query based on a search condition. Transaction B inserts new rows matching the condition and commits. Transaction A runs the query again and gets a different set of rows.

### The Four Isolation Levels
1. **READ_UNCOMMITTED**: Lowest isolation. Allows Dirty Reads, Non-repeatable Reads, and Phantom Reads. Max concurrency, low integrity.
2. **READ_COMMITTED**: Prevents Dirty Reads but allows Non-repeatable and Phantom Reads (Default in Postgres, Oracle, SQL Server).
3. **REPEATABLE_READ**: Prevents Dirty and Non-repeatable Reads, but allows Phantom Reads (Default in MySQL InnoDB).
4. **SERIALIZABLE**: Highest isolation. Prevents all anomalies by forcing execution to appear sequential. High locking overhead and low concurrency.', 'Cô lập giao dịch (transaction isolation) định nghĩa mức độ trực quan/hiển thị của một giao dịch đối với các thay đổi chưa được commit từ các giao dịch đồng thời khác. Nó được thiết kế nhằm ngăn chặn các hiện tượng đọc sai lệch khi nhiều client truy cập dữ liệu cùng lúc.

### Các hiện tượng đọc sai lệch cần ngăn chặn
* **Dirty Read (Đọc bẩn)**: Giao dịch A đọc dữ liệu đã bị sửa đổi bởi Giao dịch B nhưng chưa commit. Nếu Giao dịch B rollback, dữ liệu Giao dịch A đọc là vô giá trị.
* **Non-repeatable Read (Đọc không lặp lại)**: Giao dịch A đọc một dòng dữ liệu. Giao dịch B cập nhật dòng dữ liệu đó và commit. Giao dịch A đọc lại và nhận được giá trị khác.
* **Phantom Read (Đọc bóng ma)**: Giao dịch A truy vấn một dải dữ liệu dựa trên một điều kiện. Giao dịch B chèn thêm dòng mới thỏa mãn điều kiện đó và commit. Giao dịch A truy vấn lại và thấy các dòng mới xuất hiện.

### 4 Mức độ cô lập tiêu chuẩn
1. **READ_UNCOMMITTED**: Cô lập thấp nhất. Cho phép xảy ra cả Dirty, Non-repeatable và Phantom Reads. Hiệu năng cao nhất, tính toàn vẹn thấp nhất.
2. **READ_COMMITTED**: Ngăn chặn Dirty Reads, nhưng vẫn cho phép Non-repeatable và Phantom Reads (Mặc định trong Postgres, Oracle, SQL Server).
3. **REPEATABLE_READ**: Ngăn chặn Dirty và Non-repeatable Reads, cho phép Phantom Reads (Mặc định trong MySQL InnoDB).
4. **SERIALIZABLE**: Cô lập cao nhất. Ngăn chặn toàn bộ các hiện tượng sai lệch bằng cách thực thi tuần tự hoặc mô phỏng tuần tự. Gây tốn chi phí khóa dữ liệu lớn, giảm hiệu năng hệ thống.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-165', 'JPA/Hibernate', 'JPA/Hibernate', 'Senior', 'What is the difference between optimistic and pessimistic locking?', 'Sự khác biệt giữa khóa lạc quan (optimistic locking) và khóa bi quan (pessimistic locking) là gì?', 'The main difference between optimistic and pessimistic locking lies in how they handle data concurrency conflicts and whether they actively block access to database records.

### Optimistic Locking
* **Approach**: Assumes conflicts are rare. It does not hold any database locks during the reading and editing phase.
* **Mechanism**: Relies on a version identifier (e.g., annotated with `@Version` in JPA, using an `INT` or `TIMESTAMP` column). When updating, the SQL query looks like: `UPDATE entity SET version = version + 1 WHERE id = :id AND version = :oldVersion`. If another transaction changed the version in the database first, no rows are updated, and JPA throws an `OptimisticLockException`.
* **Pros & Cons**: High throughput, no blocking. However, if collisions are frequent, retries can consume CPU resources.
* **Use Case**: Read-heavy applications with low write contention.

### Pessimistic Locking
* **Approach**: Assumes conflicts are highly probable. It actively locks the record at the database level to block other transactions.
* **Mechanism**: Triggers SQL clauses like `SELECT ... FOR UPDATE` (PESSIMISTIC_WRITE) or shared locks (PESSIMISTIC_READ). Any other transaction trying to modify or read the locked rows must wait until the current transaction commits or rolls back.
* **Pros & Cons**: Guarantees consistency, avoids application retries. However, it significantly reduces concurrency, limits scalability, and can lead to database deadlocks.
* **Use Case**: High-contention write operations where absolute consistency is required (e.g., money transfers, inventory decrement).', 'Sự khác biệt cốt lõi giữa khóa lạc quan (optimistic locking) và khóa bi quan (pessimistic locking) nằm ở cách chúng giải quyết các xung đột đồng thời khi cập nhật dữ liệu và việc chúng có chủ động chặn quyền truy cập vào các bản ghi ở cơ sở dữ liệu hay không.

### Optimistic Locking (Khóa lạc quan)
* **Cách tiếp cận**: Giả định rằng xung đột rất hiếm khi xảy ra. Nó không giữ bất kỳ khóa cơ sở dữ liệu nào trong suốt quá trình đọc và chỉnh sửa dữ liệu.
* **Cơ chế**: Dựa vào trường phiên bản (được đánh dấu bằng `@Version` trong JPA, sử dụng cột `INT` hoặc `TIMESTAMP`). Khi cập nhật, câu lệnh SQL sẽ có dạng: `UPDATE entity SET version = version + 1 WHERE id = :id AND version = :oldVersion`. Nếu một giao dịch khác đã thay đổi phiên bản trong DB trước, không có dòng nào được cập nhật, và JPA sẽ ném ra ngoại lệ `OptimisticLockException`.
* **Ưu & Nhược điểm**: Lưu lượng xử lý cao, không gây chặn luồng. Tuy nhiên, nếu xung đột xảy ra thường xuyên, việc thử lại (retry) nhiều lần có thể gây lãng phí tài nguyên CPU.
* **Trường hợp sử dụng**: Thích hợp cho các ứng dụng có lượng đọc cao và ít cạnh tranh ghi dữ liệu.

### Pessimistic Locking (Khóa bi quan)
* **Cách tiếp cận**: Giả định xung đột rất dễ xảy ra. Nó chủ động khóa bản ghi ở cấp cơ sở dữ liệu để ngăn chặn các giao dịch khác tác động vào.
* **Cơ chế**: Kích hoạt các câu lệnh SQL như `SELECT ... FOR UPDATE` (PESSIMISTIC_WRITE) hoặc khóa chia sẻ (PESSIMISTIC_READ). Bất kỳ giao dịch nào khác muốn sửa đổi hoặc đọc dòng dữ liệu bị khóa đều phải chờ cho đến khi giao dịch hiện tại commit hoặc rollback.
* **Ưu & Nhược điểm**: Đảm bảo tính nhất quán tuyệt đối, tránh được việc phải thử lại ở ứng dụng. Tuy nhiên, nó làm giảm khả năng xử lý đồng thời, giới hạn khả năng mở rộng hệ thống và dễ dẫn đến tình trạng deadlock.
* **Trường hợp sử dụng**: Thích hợp cho các thao tác ghi cạnh tranh cao, yêu cầu tính chính xác cao (ví dụ: chuyển tiền ngân hàng, trừ số lượng tồn kho).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-166', 'JPA/Hibernate', 'JPA/Hibernate', 'Mid', 'What problem does optimistic locking solve?', 'Khóa lạc quan (optimistic locking) giải quyết vấn đề gì?', 'Optimistic locking solves the **Lost Update** (or double update) problem in concurrent database transactions without locking database rows during the read and business logic phases.

### The Problem: Lost Update
When two users concurrently read the same record, modify it, and save it back:
1. **User A** reads a product record (Quantity = 10).
2. **User B** reads the same product record (Quantity = 10).
3. **User A** updates the Quantity to 9 and saves.
4. **User B** updates the Quantity to 8 and saves.
5. User A''s update is **lost** because User B overwrote the row without knowing User A made a change.

### How Optimistic Locking Solves It
* **No Database Locks During Read**: Unlike pessimistic locking, which locks rows during read time (`SELECT ... FOR UPDATE`), optimistic locking assumes conflicts are rare.
* **Conflict Detection on Write**: It uses a version identifier (number or timestamp). When updating, it checks if the version in the database is the same as the version it read:
  ```sql
  UPDATE product SET quantity = 8, version = version + 1 WHERE id = 1 AND version = 1;
  ```
* **Aborts Conflict**: If User A already updated the row, the database version would be `2`. User B''s update statement will affect `0` rows because the `version = 1` condition fails. Hibernate/JPA detects this and throws an `OptimisticLockException` (or Spring''s `ObjectOptimisticLockingFailureException`), allowing the application to handle the conflict (e.g., retrying or notifying the user).', 'Khóa lạc quan (optimistic locking) giải quyết vấn đề **Ghi đè/Mất dữ liệu cập nhật (Lost Update)** trong các giao dịch cơ sở dữ liệu đồng thời mà không cần khóa cứng các hàng dữ liệu (lock rows) trong suốt quá trình đọc và xử lý logic nghiệp vụ.

### Vấn đề: Mất dữ liệu cập nhật (Lost Update)
Khi hai người dùng đồng thời đọc một bản ghi, chỉnh sửa và lưu lại:
1. **Người dùng A** đọc thông tin sản phẩm (Số lượng = 10).
2. **Người dùng B** đọc cùng thông tin sản phẩm đó (Số lượng = 10).
3. **Người dùng A** cập nhật Số lượng thành 9 và lưu lại.
4. **Người dùng B** cập nhật Số lượng thành 8 và lưu lại.
5. Bản cập nhật của Người dùng A bị **mất hoàn toàn** vì Người dùng B đã ghi đè dữ liệu lên hàng đó mà không hề biết Người dùng A đã thay đổi nó.

### Cách khóa lạc quan giải quyết vấn đề
* **Không khóa database khi đọc**: Khác với khóa bi quan (pessimistic locking) khóa hàng ngay khi đọc (`SELECT ... FOR UPDATE`), khóa lạc quan giả định rằng xung đột rất hiếm khi xảy ra.
* **Phát hiện xung đột khi ghi**: Nó sử dụng một cột phiên bản (version number hoặc timestamp). Khi cập nhật, hệ thống kiểm tra xem phiên bản trong DB có khớp với phiên bản đã đọc hay không:
  ```sql
  UPDATE product SET quantity = 8, version = version + 1 WHERE id = 1 AND version = 1;
  ```
* **Hủy bỏ khi có xung đột**: Nếu Người dùng A đã cập nhật trước đó, phiên bản trong DB đã tăng lên `2`. Câu lệnh UPDATE của Người dùng B sẽ tác động lên `0` dòng do điều kiện `version = 1` không còn thỏa mãn. Hibernate/JPA sẽ phát hiện điều này và ném ra ngoại lệ `OptimisticLockException` (hoặc `ObjectOptimisticLockingFailureException` của Spring), cho phép ứng dụng xử lý xung đột (ví dụ: thử lại hoặc thông báo lỗi cho người dùng).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-167', 'JPA/Hibernate', 'JPA/Hibernate', 'Junior', 'What is @Version used for?', 'Annotation @Version được sử dụng để làm gì?', '`@Version` is a JPA annotation used to enable **optimistic locking** for an entity. It informs the persistence provider (such as Hibernate) to automatically track changes and detect concurrent modification conflicts.

### Key Characteristics:
1. **Type**: The property annotated with `@Version` can be of type `int`, `Integer`, `short`, `Short`, `long`, `Long`, or `java.sql.Timestamp`.
2. **Automatic Management**: Hibernate automatically increments this version value every time the entity is updated. You should not modify it manually.
3. **Query Implementation**: During an update, JPA includes the version in the `WHERE` clause:
   ```sql
   UPDATE entity_table SET value = ?, version = version + 1 WHERE id = ? AND version = current_version;
   ```

### Code Example:
```java
import jakarta.persistence.*;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private double price;

    @Version
    private Integer version; // Used for optimistic locking
}
```

If another transaction has updated the database row in the meantime, the `version` column will no longer match the version read by the current transaction. The update fails, affecting `0` rows, and Hibernate throws an `OptimisticLockException` to protect data integrity.', '`@Version` là một annotation trong JPA được sử dụng để kích hoạt tính năng **khóa lạc quan (optimistic locking)** cho một Entity. Nó báo cho persistence provider (như Hibernate) biết cần tự động theo dõi các thay đổi và phát hiện xung đột khi có nhiều tiến trình sửa đổi đồng thời.

### Đặc điểm quan trọng:
1. **Kiểu dữ liệu**: Thuộc tính được gắn `@Version` có thể có kiểu `int`, `Integer`, `short`, `Short`, `long`, `Long`, hoặc `java.sql.Timestamp`.
2. **Tự động quản lý**: Hibernate tự động tăng giá trị của cột version này mỗi khi entity được cập nhật. Bạn không nên tự sửa đổi giá trị này bằng code thủ công.
3. **Triển khai truy vấn**: Khi cập nhật dữ liệu, JPA sẽ đưa version vào điều kiện của mệnh đề `WHERE`:
   ```sql
   UPDATE entity_table SET value = ?, version = version + 1 WHERE id = ? AND version = current_version;
   ```

### Ví dụ minh họa:
```java
import jakarta.persistence.*;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private double price;

    @Version
    private Integer version; // Dùng để khóa lạc quan
}
```

Nếu một transaction khác đã cập nhật hàng này trong cơ sở dữ liệu trước đó, cột `version` sẽ không còn khớp với phiên bản mà transaction hiện tại đã đọc. Câu lệnh UPDATE thất bại (tác động `0` hàng), và Hibernate sẽ ném ra `OptimisticLockException` để bảo vệ tính toàn vẹn dữ liệu.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-168', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is PostgreSQL?', 'PostgreSQL là gì?', '**PostgreSQL** (often called **Postgres**) is a highly stable, enterprise-class, open-source **Object-Relational Database Management System (ORDBMS)**. 

### Key Characteristics:
* **Object-Relational**: It supports relational DBMS concepts (tables, schemas, foreign keys) along with object-oriented features (user-defined types, table inheritance, custom functions).
* **ACID Compliance**: Out of the box, it guarantees Atomicity, Consistency, Isolation, and Durability, making it highly reliable for transactions.
* **Extensibility**: You can define custom data types, create custom functions (using PL/pgSQL, Python, Perl, etc.), and load plugins (like PostGIS for geographic data).
* **Advanced Data Types**: Native support for unstructured and semi-structured data like JSON, JSONB, XML, UUID, Arrays, and Hstore.
* **Active Community**: Backed by a strong global community rather than owned by a single corporation, ensuring long-term independence and continuous updates.', '**PostgreSQL** (thường được gọi tắt là **Postgres**) là một **Hệ quản trị cơ sở dữ liệu quan hệ đối tượng (ORDBMS)** mã nguồn mở, có tính ổn định rất cao và đạt chuẩn doanh nghiệp.

### Các đặc điểm chính:
* **Quan hệ đối tượng (Object-Relational)**: Nó hỗ trợ các khái niệm của hệ CSDL quan hệ truyền thống (bảng, schema, khóa ngoại) kết hợp với các tính năng hướng đối tượng (kiểu dữ liệu tự định nghĩa, kế thừa bảng, hàm tùy chỉnh).
* **Tuân thủ ACID**: Đảm bảo tuyệt đối các thuộc tính Atomicity (Tính nguyên tố), Consistency (Tính nhất quán), Isolation (Tính cô lập), và Durability (Tính bền vững), rất tin cậy cho các hệ thống giao dịch tài chính.
* **Khả năng mở rộng**: Cho phép định nghĩa kiểu dữ liệu mới, viết hàm bằng nhiều ngôn ngữ (PL/pgSQL, Python, Perl, v.v.), cài đặt các extension (như PostGIS cho dữ liệu bản đồ địa lý).
* **Kiểu dữ liệu nâng cao**: Hỗ trợ xuất sắc dữ liệu phi cấu trúc và bán cấu trúc thông qua kiểu JSON, JSONB (JSON nhị phân tối ưu hóa), XML, UUID, Mảng (Arrays), và Hstore.
* **Cộng đồng năng động**: Được phát triển và duy trì bởi một cộng đồng toàn cầu thay vì thuộc sở hữu của một công ty duy nhất, đảm bảo tính độc lập lâu dài.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-169', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is a primary key?', 'Khóa chính (primary key) là gì?', 'A **Primary Key** is a column (or a combination of columns) in a relational database table that uniquely identifies each row (record) in that table.

### Rules and Characteristics:
1. **Uniqueness**: Every value in the primary key column must be unique across the entire table. No two rows can have the exact same primary key.
2. **Non-Nullability**: A primary key column cannot contain `NULL` values. Every record must have a valid identifier.
3. **Single Constraint per Table**: A table can only have one primary key constraint, although that primary key can consist of multiple columns (known as a **Composite Primary Key**).
4. **Automatic Indexing**: Defining a primary key automatically creates a unique index (typically a B-Tree index) on the key columns to optimize data retrieval speeds.', '**Khóa chính (Primary Key)** là một cột (hoặc một tổ hợp nhiều cột) trong bảng dữ liệu quan hệ dùng để định danh duy nhất cho từng hàng (bản ghi) trong bảng đó.

### Quy tắc và đặc điểm:
1. **Tính duy nhất (Uniqueness)**: Tất cả các giá trị trong cột khóa chính phải là duy nhất. Không thể có hai hàng trùng nhau về giá trị khóa chính.
2. **Không chứa giá trị rỗng (Non-Nullability)**: Cột khóa chính không được chứa giá trị `NULL`. Mọi bản ghi đều phải có một định danh hợp lệ.
3. **Giới hạn duy nhất**: Mỗi bảng chỉ có thể có duy nhất một khóa chính, tuy nhiên khóa chính này có thể cấu thành từ nhiều cột khác nhau (gọi là **Khóa chính tổng hợp - Composite Primary Key**).
4. **Tự động tạo Chỉ mục**: Khi định nghĩa một khóa chính, hệ quản trị CSDL sẽ tự động tạo một unique index (thường là B-Tree index) trên cột đó để tối ưu hóa tốc độ tìm kiếm.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-170', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is a foreign key?', 'Khóa ngoại (foreign key) là gì?', 'A **Foreign Key** is a column (or a set of columns) in one table that references the primary key or a unique key in another table. It is used to establish and enforce a link (relationship) between the data in two tables.

### Key Concepts:
* **Referential Integrity**: It ensures that a value in the child table''s foreign key column must either exist in the parent table''s referenced column or be `NULL` (if nulls are allowed).
* **Parent-Child Relationship**: The table containing the referenced key is the parent table, and the table containing the foreign key is the child table.
* **Cascading Referential Actions**: You can define what happens to child records when parent records are updated or deleted:
  * `ON DELETE CASCADE`: Delete child rows when the parent row is deleted.
  * `ON DELETE SET NULL`: Set the child column values to NULL.
  * `ON DELETE RESTRICT` / `NO ACTION`: Prevent deletion of parent row if child rows exist.', '**Khóa ngoại (Foreign Key)** là một cột (hoặc nhóm cột) trong một bảng tham chiếu đến khóa chính hoặc khóa duy nhất của một bảng khác. Nó được sử dụng để thiết lập và duy trì mối quan hệ liên kết giữa dữ liệu của hai bảng.

### Các khái niệm cốt lõi:
* **Tính toàn vẹn tham chiếu (Referential Integrity)**: Đảm bảo rằng giá trị trong cột khóa ngoại của bảng con bắt buộc phải tồn tại trong cột được tham chiếu của bảng cha, hoặc có giá trị `NULL` (nếu cho phép null).
* **Mối quan hệ Cha-Con**: Bảng chứa khóa được tham chiếu gọi là bảng cha, còn bảng chứa khóa ngoại gọi là bảng con.
* **Hành vi tham chiếu lan truyền (Cascading Actions)**: Có thể định nghĩa hành vi xảy ra đối với bản ghi con khi bản ghi cha bị cập nhật hoặc xóa:
  * `ON DELETE CASCADE`: Xóa các hàng ở bảng con nếu hàng ở bảng cha bị xóa.
  * `ON DELETE SET NULL`: Đặt giá trị khóa ngoại ở bảng con thành NULL.
  * `ON DELETE RESTRICT` / `NO ACTION`: Ngăn chặn việc xóa hàng ở bảng cha nếu vẫn còn hàng ở bảng con tham chiếu tới nó.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-171', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is a unique constraint?', 'Ràng buộc duy nhất (unique constraint) là gì?', 'A **Unique Constraint** is a database rule ensuring that all values in a column (or a combination of columns) are distinct across all rows in the table.

### Key Characteristics:
1. **Uniqueness**: Prevents duplicate values from being inserted into the column.
2. **Nullable**: Unlike a primary key, a unique constraint allows `NULL` values. In most relational databases (including PostgreSQL), multiple `NULL` values are allowed in a unique column because `NULL != NULL` in standard SQL.
3. **Multiple Constraints**: While a table can have only one primary key, it can have multiple unique constraints.
4. **Underlying Index**: The database engine automatically creates a **Unique Index** on the column(s) behind the scenes to enforce this constraint efficiently.', '**Ràng buộc duy nhất (Unique Constraint)** là một quy tắc cơ sở dữ liệu nhằm đảm bảo rằng tất cả các giá trị trong một cột (hoặc tổ hợp nhiều cột) là khác nhau giữa tất cả các hàng trong bảng.

### Các đặc điểm chính:
1. **Tính duy nhất**: Ngăn chặn việc thêm các giá trị trùng lặp vào cột đó.
2. **Cho phép NULL**: Khác với khóa chính, ràng buộc duy nhất cho phép lưu trữ giá trị `NULL`. Trong hầu hết các CSDL quan hệ (bao gồm cả PostgreSQL), bạn có thể lưu nhiều giá trị `NULL` trên cột này vì theo chuẩn SQL, `NULL != NULL`.
3. **Số lượng ràng buộc**: Một bảng chỉ có thể có duy nhất một khóa chính, nhưng có thể khai báo nhiều ràng buộc duy nhất trên các cột khác nhau.
4. **Chỉ mục đi kèm**: Hệ quản trị CSDL sẽ tự động tạo một **Unique Index** cho (các) cột đó để thực thi ràng buộc một cách hiệu quả.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-172', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is an index?', 'Chỉ mục (index) là gì?', 'An **Index** is a supplemental database structure designed to speed up the retrieval of rows from a table at the cost of extra storage space and slower write operations (INSERT, UPDATE, DELETE).

### Analogies and Concepts:
* **Book Index Analogy**: Instead of reading every page of a book to find a topic (Sequential Scan / Full Table Scan), you look at the index at the back of the book to find the exact page number (Index Scan).
* **Types of Indexes (PostgreSQL)**:
  * **B-Tree**: The default index type. Excellent for sorting, ranges (`<`, `<=`, `=`, `>=`, `>`), and exact matches.
  * **Hash**: Optimizes exact matches (`=`).
  * **GIN (Generalized Inverted Index)**: Great for arrays, full-text search, and JSONB document fields.
  * **GiST / SP-GiST**: Ideal for geometric, spatial, and hierarchical data.
  * **BRIN (Block Range Index)**: Suitable for extremely large datasets ordered naturally (e.g., timestamps).', '**Chỉ mục (Index)** là một cấu trúc dữ liệu bổ trợ trong database được thiết kế để tăng tốc độ truy xuất các dòng dữ liệu từ một bảng, đổi lại bằng việc tiêu tốn thêm không gian lưu trữ và làm chậm các tác vụ ghi (INSERT, UPDATE, DELETE).

### Khái niệm và liên hệ:
* **Liên hệ với mục lục sách**: Thay vì phải đọc từng trang sách để tìm một chủ đề (Sequential Scan / Quét toàn bộ bảng), bạn tra cứu mục lục ở cuối sách để tìm chính xác số trang (Index Scan).
* **Các loại chỉ mục trong PostgreSQL**:
  * **B-Tree**: Loại mặc định. Cực kỳ hiệu quả cho việc sắp xếp, truy vấn khoảng (`<`, `<=`, `=`, `>=`, `>`) và tìm kiếm chính xác.
  * **Hash**: Tối ưu hóa cho các truy vấn bằng (`=`).
  * **GIN (Generalized Inverted Index)**: Phù hợp cho kiểu mảng (array), tìm kiếm toàn văn (full-text search) và các trường JSONB.
  * **GiST / SP-GiST**: Phù hợp cho dữ liệu không gian, hình học và cấu trúc phân cấp.
  * **BRIN (Block Range Index)**: Thích hợp cho các tập dữ liệu khổng lồ có thứ tự sắp xếp tự nhiên (như timestamp).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-173', 'PostgreSQL', 'PostgreSQL', 'Mid', 'How does an index improve query performance?', 'Chỉ mục (index) giúp cải thiện hiệu năng truy vấn như thế nào?', 'An index improves query performance by replacing a costly **Full Table Scan (Sequential Scan)** with a highly efficient **Index Lookup (Index Scan)**.

### Detailed Mechanism (using B-Tree):
1. **Logarithmic Time Complexity**: A standard B-Tree index keeps keys in a sorted, balanced tree structure. Searching for a specific key reduces the search space from $O(N)$ (where $N$ is the number of rows) to $O(\log N)$.
2. **Fewer Disk I/O Operations**: Data in a database is stored in pages (blocks). Without an index, the database engine must load every page of the table from disk into memory. With an index, it loads only the few tree nodes containing the key, dramatically reducing disk I/O.
3. **Direct Row Pointers (TID/RID)**: The leaf nodes of the index store the indexed key along with a pointer containing the physical location of the row on disk (Tuple ID in PostgreSQL). The engine goes directly to that page to retrieve the actual row.
4. **Index-Only Scans**: If a query only selects fields that are part of the index itself, the database engine avoids reading the table pages entirely, serving the query directly from the index in memory.', 'Chỉ mục cải thiện hiệu năng truy vấn bằng cách thay thế việc **Quét toàn bộ bảng (Sequential Scan)** tốn kém bằng cách **Tra cứu chỉ mục (Index Scan)** có hiệu năng cao hơn rất nhiều.

### Cơ chế chi tiết (với B-Tree index):
1. **Độ phức tạp thời gian Logarith**: Một chỉ mục B-Tree chuẩn giữ các khóa được sắp xếp trong một cấu trúc cây cân bằng. Tìm kiếm một khóa cụ thể giảm độ phức tạp từ $O(N)$ (quét qua từng hàng) xuống $O(\log N)$.
2. **Giảm số lượng I/O đĩa**: Dữ liệu trong CSDL được lưu trữ theo các trang (blocks). Không có chỉ mục, hệ quản trị phải tải toàn bộ các trang dữ liệu từ đĩa vào bộ nhớ RAM. Có chỉ mục, nó chỉ cần tải một vài nút của cây chứa khóa cần tìm, giảm tối đa việc đọc ghi đĩa.
3. **Con trỏ trỏ trực tiếp đến hàng (TID/RID)**: Các nút lá của chỉ mục chứa khóa được lập chỉ mục kèm theo con trỏ địa chỉ vật lý của hàng trên đĩa (Tuple ID trong PostgreSQL). Hệ quản trị CSDL truy cập thẳng đến trang chứa hàng đó để lấy dữ liệu.
4. **Index-Only Scan**: Nếu truy vấn chỉ yêu cầu các trường nằm ngay trong chỉ mục, hệ thống sẽ bỏ qua việc truy xuất các trang dữ liệu của bảng, trả về kết quả trực tiếp từ chỉ mục trên bộ nhớ đệm.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-174', 'PostgreSQL', 'PostgreSQL', 'Mid', 'When can an index make database operations slower?', 'Khi nào chỉ mục (index) có thể làm chậm các thao tác trên cơ sở dữ liệu?', 'While indexes speed up read queries, they can degrade performance in the following scenarios:

1. **Write Overhead (DML Operations)**:
   Whenever an `INSERT`, `UPDATE`, or `DELETE` statement executes, the database must write to the table *and* update all related indexes. More indexes on a table mean slower write performance.
2. **Storage and Memory Overhead**:
   Indexes consume disk space. Large indexes cannot fit into the database cache (buffer pool), forcing the system to read them from disk, causing I/O bottlenecks.
3. **Low Cardinality Fields**:
   An index on a column with low cardinality (few unique values, e.g., `gender`, `is_active`) is usually ignored by the query planner. If forced, it can be slower than a full table scan due to the overhead of reading the index and then making random page lookups.
4. **Increased Query Planning Time**:
   Having too many indexes forces the database query optimizer (planner) to evaluate more execution paths, increasing the query planning overhead.', 'Mặc dù chỉ mục giúp tăng tốc độ đọc dữ liệu, chúng có thể làm giảm hiệu năng hệ thống trong các kịch bản sau:

1. **Gánh nặng khi ghi (Các thao tác DML)**:
   Mỗi khi thực thi các lệnh `INSERT`, `UPDATE` hoặc `DELETE`, cơ sở dữ liệu vừa phải cập nhật bảng vật lý vừa phải cập nhật lại tất cả chỉ mục liên quan. Bảng càng nhiều index thì tốc độ ghi dữ liệu càng chậm.
2. **Chi phí lưu trữ và RAM**:
   Các chỉ mục chiếm diện tích ổ đĩa. Khi chỉ mục quá lớn không thể nằm vừa trong bộ nhớ đệm (buffer pool), hệ thống buộc phải đọc chúng từ đĩa, gây ra nghẽn I/O.
3. **Các trường có độ phân biệt thấp (Low Cardinality)**:
   Chỉ mục trên cột có ít giá trị duy nhất (như `gender`, `is_active`) thường bị bộ lập lịch bỏ qua. Nếu ép buộc sử dụng, nó có thể chậm hơn quét tuần tự vì phải duyệt chỉ mục rồi tra cứu trang dữ liệu ngẫu nhiên.
4. **Tăng thời gian lập kế hoạch truy vấn (Query Planning)**:
   Việc sở hữu quá nhiều chỉ mục khiến bộ tối ưu hóa truy vấn (Query Planner) phải đánh giá nhiều đường đi thực thi hơn, làm tăng thời gian lập kế hoạch chạy câu lệnh SQL.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-175', 'PostgreSQL', 'PostgreSQL', 'Mid', 'What is the difference between a clustered and a non-clustered index conceptually?', 'Sự khác biệt giữa clustered index và non-clustered index về mặt khái niệm là gì?', 'Conceptually, the differences between a **Clustered Index** and a **Non-Clustered Index** are:

| Feature | Clustered Index | Non-Clustered Index |
| :--- | :--- | :--- |
| **Physical Order** | Physically reorganizes the actual data rows in the table to match the index order. | Does not affect the physical sorting of the rows in the table. |
| **Leaf Nodes** | The leaf nodes contain the **actual data rows**. | The leaf nodes contain **pointers** (Tuple ID / Row ID) referencing the actual data rows. |
| **Count Limit** | Only **one** per table (since data can only be physically sorted one way). | **Multiple** indexes per table are allowed. |
| **Storage** | Does not require separate storage for data rows, only the index tree. | Requires separate storage to maintain the index structure and pointers. |

> [!NOTE]
> PostgreSQL does not support automatic/dynamic clustered indexes natively (unlike InnoDB in MySQL or SQL Server). However, PostgreSQL has a `CLUSTER` command that physically orders a table based on an index *one time*, but it does not maintain this order automatically as new rows are inserted or updated.', 'Về mặt khái niệm, sự khác biệt giữa **Clustered Index (Chỉ mục cụm)** và **Non-Clustered Index (Chỉ mục không cụm)** như sau:

| Đặc tính | Clustered Index (Chỉ mục cụm) | Non-Clustered Index (Chỉ mục không cụm) |
| :--- | :--- | :--- |
| **Sắp xếp Vật lý** | Sắp xếp lại thứ tự vật lý của các hàng dữ liệu trong bảng khớp với thứ tự của chỉ mục. | Không ảnh hưởng đến cách sắp xếp vật lý các hàng dữ liệu của bảng. |
| **Nút Lá (Leaf Nodes)** | Nút lá chứa **chính các hàng dữ liệu thực tế**. | Nút lá chứa **con trỏ** (Tuple ID / Row ID) trỏ tới địa chỉ của các hàng dữ liệu. |
| **Giới hạn Số lượng** | Chỉ có **duy nhất một** clustered index trên mỗi bảng. | Có thể tạo **nhiều** non-clustered index trên một bảng. |
| **Bộ nhớ lưu trữ** | Không cần bộ nhớ riêng để lưu hàng dữ liệu, chỉ cần lưu cấu trúc cây chỉ mục. | Cần không gian lưu trữ riêng biệt để duy trì cấu trúc chỉ mục và con trỏ. |

> [!NOTE]
> PostgreSQL không hỗ trợ clustered index tự động/năng động (khác với InnoDB của MySQL hay SQL Server). Tuy nhiên, PostgreSQL có lệnh `CLUSTER` giúp sắp xếp vật lý bảng dựa trên một chỉ mục *tại thời điểm chạy*, nhưng thứ tự này không được duy trì tự động khi có dữ liệu mới thêm vào.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-176', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is the difference between WHERE and HAVING?', 'Sự khác biệt giữa WHERE và HAVING là gì?', 'The differences between the **WHERE** and **HAVING** clauses in SQL are:

| Feature | WHERE Clause | HAVING Clause |
| :--- | :--- | :--- |
| **Purpose** | Filters rows **before** any grouping or aggregation occurs. | Filters groups **after** they have been aggregated. |
| **Aggregate Functions** | **Cannot** contain aggregate functions (e.g., `SUM()`, `AVG()`, `COUNT()`). | **Can** use aggregate functions to filter groups. |
| **Usage** | Can be used without `GROUP BY`. | Mostly used in conjunction with `GROUP BY`. |
| **SQL Execution Order** | Evaluated **before** `GROUP BY`. | Evaluated **after** `GROUP BY`. |

### Execution Pipeline Example:
```sql
SELECT department_id, COUNT(*) 
FROM employees 
WHERE salary > 50000            -- 1. Filters individual employees first
GROUP BY department_id          -- 2. Groups the remaining employees
HAVING COUNT(*) > 5;            -- 3. Filters out departments with 5 or fewer qualifying employees
```', 'Sự khác biệt giữa mệnh đề **WHERE** và **HAVING** trong SQL bao gồm:

| Đặc điểm | Mệnh đề WHERE | Mệnh đề HAVING |
| :--- | :--- | :--- |
| **Mục đích** | Lọc dữ liệu các hàng **trước** khi nhóm hoặc tổng hợp dữ liệu. | Lọc các nhóm dữ liệu **sau** khi chúng đã được gom nhóm và tổng hợp. |
| **Hàm tổng hợp** | **Không được phép** dùng hàm tổng hợp (như `SUM()`, `AVG()`, `COUNT()`). | **Được phép** dùng các hàm tổng hợp để làm điều kiện lọc. |
| **Mức độ phụ thuộc** | Sử dụng độc lập, không cần có `GROUP BY`. | Hầu như luôn đi kèm với mệnh đề `GROUP BY`. |
| **Thứ tự thực thi SQL** | Được xử lý **trước** lệnh `GROUP BY`. | Được xử lý **sau** lệnh `GROUP BY`. |

### Ví dụ về chu trình thực thi:
```sql
SELECT department_id, COUNT(*) 
FROM employees 
WHERE salary > 50000            -- 1. Lọc các nhân viên có lương > 50000 trước
GROUP BY department_id          -- 2. Gom nhóm nhân viên theo phòng ban
HAVING COUNT(*) > 5;            -- 3. Chỉ giữ lại các phòng ban có số nhân viên (lương > 50000) lớn hơn 5
```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-177', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is the difference between INNER JOIN and LEFT JOIN?', 'Sự khác biệt giữa INNER JOIN và LEFT JOIN là gì?', 'An `INNER JOIN` and a `LEFT JOIN` (or `LEFT OUTER JOIN`) are SQL operations used to combine rows from two or more tables based on a related column between them.

### 1. INNER JOIN
- **Behavior**: Returns only the rows that have matching values in **both** tables. If a row in the left table does not have a matching row in the right table, it is excluded from the result set.
- **Use Case**: Used when you want to retrieve records that have strict associations in both tables (e.g., retrieving orders and their corresponding customers, where every order must have a customer).
- **Example**:
  ```sql
  SELECT users.id, orders.id
  FROM users
  INNER JOIN orders ON users.id = orders.user_id;
  ```
  This returns only users who have made at least one order.

### 2. LEFT JOIN
- **Behavior**: Returns **all** rows from the left table, along with the matching rows from the right table. If there is no match, the columns of the right table in the result set will contain `NULL`.
- **Use Case**: Used when you want to keep all records from the primary (left) table regardless of whether they have a match in the secondary (right) table (e.g., listing all users and their orders, showing `NULL` for users who haven''t ordered anything yet).
- **Example**:
  ```sql
  SELECT users.id, orders.id
  FROM users
  LEFT JOIN orders ON users.id = orders.user_id;
  ```
  This returns all users, including those who have not placed any orders.

### Summary Comparison Table
| Feature | INNER JOIN | LEFT JOIN |
| :--- | :--- | :--- |
| **Unmatched Left Rows** | Excluded | Included (filled with `NULL` for right table columns) |
| **Unmatched Right Rows**| Excluded | Excluded |
| **Result Set Size** | Smaller or equal to `LEFT JOIN` | Always contains at least all rows of the left table |', '`INNER JOIN` và `LEFT JOIN` (hoặc `LEFT OUTER JOIN`) là các phép toán SQL được sử dụng để kết hợp các hàng từ hai hoặc nhiều bảng dựa trên mối quan hệ giữa các cột của chúng.

### 1. INNER JOIN (Liên kết trong)
- **Hành vi**: Chỉ trả về các hàng có giá trị khớp nhau ở **cả hai** bảng. Nếu một hàng ở bảng bên trái không có hàng tương ứng khớp ở bảng bên phải, hàng đó sẽ bị loại khỏi kết quả.
- **Trường hợp sử dụng**: Dùng khi bạn muốn lấy các bản ghi có mối quan hệ chặt chẽ ở cả hai bảng (ví dụ: lấy thông tin đơn hàng và khách hàng tương ứng, nơi mọi đơn hàng bắt buộc phải có khách hàng).
- **Ví dụ**:
  ```sql
  SELECT users.id, orders.id
  FROM users
  INNER JOIN orders ON users.id = orders.user_id;
  ```
  Kết quả chỉ trả về những người dùng đã từng đặt ít nhất một đơn hàng.

### 2. LEFT JOIN (Liên kết trái)
- **Hành vi**: Trả về **tất cả** các hàng từ bảng bên trái, cùng với các hàng khớp từ bảng bên phải. Nếu không có hàng khớp, các cột của bảng bên phải trong kết quả sẽ nhận giá trị `NULL`.
- **Trường hợp sử dụng**: Dùng khi bạn muốn giữ lại toàn bộ bản ghi từ bảng chính (bảng bên trái) bất kể chúng có bản ghi liên kết ở bảng phụ (bảng bên phải) hay không (ví dụ: danh sách tất cả người dùng và các đơn hàng của họ, hiển thị `NULL` cho những người dùng chưa mua hàng).
- **Ví dụ**:
  ```sql
  SELECT users.id, orders.id
  FROM users
  LEFT JOIN orders ON users.id = orders.user_id;
  ```
  Kết quả trả về tất cả người dùng, bao gồm cả những người chưa bao giờ đặt hàng.

### Bảng so sánh tóm tắt
| Đặc điểm | INNER JOIN | LEFT JOIN |
| :--- | :--- | :--- |
| **Hàng không khớp từ bảng trái** | Bị loại bỏ | Được giữ lại (điền `NULL` cho các cột bảng phải) |
| **Hàng không khớp từ bảng phải** | Bị loại bỏ | Bị loại bỏ |
| **Kích thước kết quả** | Nhỏ hơn hoặc bằng `LEFT JOIN` | Luôn chứa ít nhất toàn bộ số hàng của bảng trái |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-178', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is normalization?', 'Normalization là gì?', '**Normalization** is the systematic process of organizing and structuring a relational database schema to minimize data redundancy (duplication) and prevent anomalies during data insertion, update, and deletion.

It involves dividing large, complex tables into smaller, well-defined tables and establishing relationships between them using primary and foreign keys.

The process is guided by a series of rules called **Normal Forms (NF)**:
1. **First Normal Form (1NF)**:
   - Eliminates duplicate columns and ensures that each column contains atomic (indivisible) values.
   - Each row must be uniquely identifiable (requires a primary key).
2. **Second Normal Form (2NF)**:
   - Meets all 1NF requirements.
   - Eliminates partial dependencies: non-key attributes must be fully functionally dependent on the entire primary key, not just a part of it (especially relevant for composite primary keys).
3. **Third Normal Form (3NF)**:
   - Meets all 2NF requirements.
   - Eliminates transitive dependencies: non-key attributes must not depend on other non-key attributes. They must depend only on the primary key (often summarized as: *"dependent on the key, the whole key, and nothing but the key"*).
4. **Boyce-Codd Normal Form (BCNF)**:
   - A stronger version of 3NF where for every non-trivial functional dependency $X \rightarrow Y$, $X$ must be a super key.', '**Normalization (Chuẩn hóa cơ sở dữ liệu)** là quy trình thiết kế và tổ chức cấu trúc của một cơ sở dữ liệu quan hệ nhằm giảm thiểu sự dư thừa dữ liệu (trùng lặp) và ngăn ngừa các lỗi dị thường (anomalies) khi thêm, sửa hoặc xóa dữ liệu.

Quá trình này chia các bảng lớn, phức tạp thành các bảng nhỏ hơn, có cấu trúc rõ ràng và thiết lập các mối quan hệ giữa chúng thông qua khóa chính (primary key) và khóa ngoại (foreign key).

Quá trình chuẩn hóa được thực hiện thông qua các cấp độ chuẩn hóa gọi là **Dạng chuẩn (Normal Forms - NF)**:
1. **Dạng chuẩn 1 (1NF)**:
   - Loại bỏ các cột trùng lặp và đảm bảo mỗi ô dữ liệu chỉ chứa giá trị nguyên tố (đơn trị, không thể chia nhỏ hơn).
   - Mỗi hàng phải được xác định duy nhất bằng một khóa chính.
2. **Dạng chuẩn 2 (2NF)**:
   - Đạt chuẩn 1NF.
   - Loại bỏ các phụ thuộc hàm bộ phận: tất cả các thuộc tính không phải khóa phải phụ thuộc hoàn toàn vào toàn bộ khóa chính (đặc biệt quan trọng đối với các khóa chính phức hợp gồm nhiều cột).
3. **Dạng chuẩn 3 (3NF)**:
   - Đạt chuẩn 2NF.
   - Loại bỏ các phụ thuộc hàm bắc cầu: các thuộc tính không phải khóa không được phụ thuộc bắc cầu vào khóa chính thông qua một thuộc tính không phải khóa khác.
4. **Dạng chuẩn Boyce-Codd (BCNF)**:
   - Phiên bản mạnh hơn của 3NF, yêu cầu với mọi phụ thuộc hàm không tầm thường $X \rightarrow Y$, thì $X$ phải là một siêu khóa (super key).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-179', 'PostgreSQL', 'PostgreSQL', 'Mid', 'What are the advantages and disadvantages of normalization?', 'Các ưu điểm và nhược điểm của normalization là gì?', 'Database normalization offers a structured approach to data integrity, but it comes with performance trade-offs in read-heavy applications.

### Advantages of Normalization
1. **Elimination of Data Redundancy**: Saves disk storage space by storing each piece of information only once.
2. **Ensures Data Integrity**: Minimizes the risk of insertion, update, and deletion anomalies. For example, updating a customer''s address in a normalized database requires updating only one row in the `addresses` table instead of scanning and updating hundreds of orders.
3. **Simpler Database Modification**: Schemas are easier to extend or modify because tables represent distinct real-world entities (single responsibility).
4. **Optimized Writing Performance**: Writes (`INSERT`, `UPDATE`, `DELETE`) are generally faster because tables are smaller, contain fewer indexes per table, and locks affect less data.

### Disadvantages of Normalization
1. **Complex Queries (Excessive Joins)**: Since data is split across many tables, retrieving information often requires joining many tables, which makes SQL queries longer and more complex.
2. **Degraded Read Performance**: Performing multiple `JOIN` operations requires the database engine to locate, match, and merge index/table data, which can consume significant CPU and I/O resources on large datasets.
3. **Harder to Optimize**: High degrees of normalization require sophisticated indexing strategies and query tuning to maintain acceptable read latencies.
4. **Over-engineering Risk**: Standard normalization up to 3NF or BCNF is ideal, but going further (4NF, 5NF) is rarely necessary in practice and can make the system excessively rigid.', 'Chuẩn hóa cơ sở dữ liệu mang lại một giải pháp cấu trúc chặt chẽ để đảm bảo tính toàn vẹn của dữ liệu, nhưng nó cũng đi kèm với sự đánh đổi về hiệu năng đối với các ứng dụng có số lượng truy vấn đọc lớn.

### Ưu điểm của chuẩn hóa (Normalization)
1. **Loại bỏ sự dư thừa dữ liệu**: Tiết kiệm không gian lưu trữ đĩa bằng cách chỉ lưu mỗi thông tin duy nhất một lần.
2. **Đảm bảo tính toàn vẹn dữ liệu**: Giảm thiểu nguy cơ xảy ra các lỗi dị thường khi thêm, sửa, xóa (anomalies). Ví dụ: cập nhật địa chỉ khách hàng chỉ cần sửa một dòng trong bảng `addresses` thay vì tìm và sửa hàng trăm đơn hàng.
3. **Dễ dàng bảo trì và mở rộng**: Cấu trúc cơ sở dữ liệu dễ sửa đổi hơn vì mỗi bảng đại diện cho một thực thể độc lập (đơn nhiệm).
4. **Tối ưu hóa hiệu năng ghi**: Các thao tác ghi dữ liệu (`INSERT`, `UPDATE`, `DELETE`) diễn ra nhanh hơn vì các bảng nhỏ hơn, ít chỉ mục (index) hơn trên mỗi bảng và các cơ chế khóa (locking) ảnh hưởng tới ít dữ liệu hơn.

### Nhược điểm của chuẩn hóa (Normalization)
1. **Truy vấn phức tạp (Quá nhiều phép JOIN)**: Do dữ liệu bị chia nhỏ ra nhiều bảng, việc truy xuất thông tin tổng hợp đòi hỏi liên kết (JOIN) nhiều bảng, làm câu lệnh SQL dài và phức tạp hơn.
2. **Giảm hiệu năng đọc**: Các phép `JOIN` phức tạp đòi hỏi Database Engine phải định vị, đối chiếu và gộp dữ liệu từ các chỉ mục/bảng, gây tốn tài nguyên CPU và I/O khi tập dữ liệu lớn.
3. **Khó tối ưu hóa**: Mức độ chuẩn hóa cao đòi hỏi các chiến lược lập chỉ mục (indexing) và tinh chỉnh câu lệnh truy vấn phức tạp để duy trì thời gian phản hồi chấp nhận được.
4. **Nguy cơ thiết kế quá mức (Over-engineering)**: Chuẩn hóa đến 3NF hoặc BCNF is lý tưởng, nhưng chuẩn hóa sâu hơn (4NF, 5NF) hiếm khi cần thiết trong thực tế và có thể làm hệ thống trở nên quá cứng nhắc.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-180', 'PostgreSQL', 'PostgreSQL', 'Mid', 'What is a database execution plan?', 'Kế hoạch thực thi cơ sở dữ liệu (database execution plan) là gì?', 'A **database execution plan** is a detailed blueprint generated by the database query optimizer that outlines the exact steps and algorithms the database engine will use to execute a specific SQL query.

When a query is submitted, the optimizer analyzes various ways to retrieve the requested data (e.g., using different indexes, join algorithms, table scan methods) and calculates an estimated "cost" for each path based on system statistics. The path with the lowest estimated cost is selected as the execution plan.

### Key Components of an Execution Plan
1. **Access Methods**: How the engine retrieves rows from tables:
   - **Sequential Scan (Seq Scan / Full Table Scan)**: Reading the entire table row by row.
   - **Index Scan**: Traversing an index structure (e.g., B-tree) to fetch rows matching a condition.
   - **Index Only Scan**: Retrieving data directly from the index without visiting the table heap.
2. **Join Algorithms**: How the engine merges rows from two tables:
   - **Nested Loop**: For each row in the outer table, scan the inner table for matches.
   - **Hash Join**: Build a hash table in memory from the smaller table and probe it with rows from the larger table.
   - **Merge Join**: Sort both datasets on the join key and merge them in a single pass.
3. **Cost Estimates**: An arbitrary unit representing the CPU and disk I/O cost to complete the operations.
4. **Row Estimates (Cardinality)**: The estimated number of rows returned by each operation in the plan.', '**Database execution plan (Kế hoạch thực thi cơ sở dữ liệu)** là một bản thiết kế chi tiết được tạo ra bởi bộ tối ưu hóa truy vấn (Query Optimizer) của cơ sở dữ liệu, phác thảo các bước và thuật toán cụ thể mà công cụ cơ sở dữ liệu sẽ sử dụng để thực thi một câu lệnh SQL.

Khi một truy vấn được gửi đến, bộ tối ưu hóa sẽ phân tích nhiều cách khác nhau để lấy dữ liệu (ví dụ: sử dụng các chỉ mục khác nhau, các thuật toán liên kết, hoặc phương thức quét bảng) và tính toán một lượng "chi phí" (cost) ước tính cho mỗi lộ trình dựa trên thống kê hệ thống. Lộ trình có chi phí ước tính thấp nhất sẽ được chọn làm kế hoạch thực thi.

### Các thành phần chính của một Kế hoạch thực thi
1. **Phương thức truy cập (Access Methods)**: Cách hệ thống lấy các hàng từ bảng:
   - **Sequential Scan (Seq Scan / Quét tuần tự)**: Đọc toàn bộ bảng theo từng hàng.
   - **Index Scan (Quét chỉ mục)**: Duyệt qua cấu trúc chỉ mục (như B-tree) để lấy các hàng khớp với điều kiện.
   - **Index Only Scan**: Lấy dữ liệu trực tiếp từ chỉ mục mà không cần truy cập vào vùng dữ liệu của bảng (heap).
2. **Thuật toán liên kết (Join Algorithms)**: Cách hệ thống kết hợp dữ liệu giữa các bảng:
   - **Nested Loop**: Với mỗi hàng ở bảng ngoài, duyệt qua bảng trong để tìm hàng khớp.
   - **Hash Join**: Tạo một bảng băm (hash table) trong bộ nhớ từ bảng nhỏ hơn và đối chiếu với các hàng từ bảng lớn hơn.
   - **Merge Join**: Sắp xếp cả hai tập dữ liệu theo khóa liên kết và gộp chúng lại trong một lượt duyệt duy nhất.
3. **Chi phí ước tính (Cost Estimates)**: Đơn vị giả định đại diện cho chi phí sử dụng CPU và I/O đĩa để hoàn thành tác vụ.
4. **Số lượng hàng ước tính (Cardinality)**: Số lượng hàng dự kiến mà mỗi hoạt động trong kế hoạch thực thi sẽ trả về.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-181', 'PostgreSQL', 'PostgreSQL', 'Mid', 'What does EXPLAIN do in PostgreSQL?', 'EXPLAIN làm gì trong PostgreSQL?', 'In PostgreSQL, the `EXPLAIN` statement displays the execution plan generated by the query planner for a given SQL statement. It is a critical tool for database administrators and backend developers to diagnose and optimize slow-running queries.

### 1. Basic `EXPLAIN`
By default, running `EXPLAIN <query>` shows the planner''s *estimates* of the execution cost and expected row counts without actually running the query.
```sql
EXPLAIN SELECT * FROM users WHERE email = ''test@example.com'';
```

### 2. `EXPLAIN ANALYZE`
Using `EXPLAIN ANALYZE <query>` forces PostgreSQL to **actually execute** the query. It returns not only the planner''s estimates but also the real execution statistics, such as:
- **Actual runtime** (in milliseconds) for each node.
- **Actual number of rows** returned.
- **Memory/disk usage** for sorting or hashing operations.
- **Number of loops** executed.

> [!WARNING]
> Because `EXPLAIN ANALYZE` actually executes the query, running it on data-modifying queries (`INSERT`, `UPDATE`, `DELETE`) will modify your data. To prevent this, wrap the statement inside a transaction and roll it back:
> ```sql
> BEGIN;
> EXPLAIN ANALYZE UPDATE users SET active = false WHERE id = 42;
> ROLLBACK;
> ```

### 3. Other Useful Flags
- `BUFFERS`: Shows how many shared blocks were read from cache (hits) or disk (reads). Must be used with `ANALYZE`.
  ```sql
  EXPLAIN (ANALYZE, BUFFERS) SELECT * FROM users WHERE active = true;
  ```
- `FORMAT JSON`: Formats the output in JSON, making it easy to parse programmatically or paste into execution plan visualization tools (like PEV or explain.depesz.com).', 'Trong PostgreSQL, câu lệnh `EXPLAIN` hiển thị kế hoạch thực thi (execution plan) do bộ lập lịch truy vấn (Query Planner) tạo ra cho một câu lệnh SQL. Đây là công cụ cực kỳ quan trọng giúp các quản trị viên cơ sở dữ liệu và lập trình viên backend chẩn đoán và tối ưu hóa các truy vấn chạy chậm.

### 1. `EXPLAIN` Cơ Bản
Mặc định, khi chạy `EXPLAIN <truy_van>`, hệ thống chỉ hiển thị các *ước tính* của bộ lập lịch về chi phí và số lượng hàng dự kiến mà không thực sự chạy câu truy vấn đó.
```sql
EXPLAIN SELECT * FROM users WHERE email = ''test@example.com'';
```

### 2. `EXPLAIN ANALYZE`
Sử dụng `EXPLAIN ANALYZE <truy_van>` bắt buộc PostgreSQL phải **thực sự chạy** câu truy vấn. Nó trả về cả ước tính ban đầu lẫn số liệu thống kê thực tế khi thực thi, bao gồm:
- **Thời gian thực thi thực tế** (tính bằng mili giây) cho từng bước.
- **Số lượng hàng thực tế** được trả về.
- **Lượng bộ nhớ/đĩa sử dụng** cho các thao tác sắp xếp (sort) hoặc băm (hash).
- **Số vòng lặp** đã thực hiện.

> [!WARNING]
> Vì `EXPLAIN ANALYZE` thực sự chạy truy vấn, nên nếu áp dụng với các câu lệnh thay đổi dữ liệu (`INSERT`, `UPDATE`, `DELETE`), dữ liệu của bạn sẽ bị thay đổi. Để tránh điều này, hãy đặt câu lệnh trong một transaction và rollback lại:
> ```sql
> BEGIN;
> EXPLAIN ANALYZE UPDATE users SET active = false WHERE id = 42;
> ROLLBACK;
> ```

### 3. Các cờ hữu ích khác
- `BUFFERS`: Hiển thị số lượng block dữ liệu được đọc từ bộ nhớ đệm (hits) hoặc từ đĩa (reads). Bắt buộc phải đi kèm với `ANALYZE`.
  ```sql
  EXPLAIN (ANALYZE, BUFFERS) SELECT * FROM users WHERE active = true;
  ```
- `FORMAT JSON`: Định dạng kết quả đầu ra thành JSON, giúp dễ dàng phân tích bằng mã lập trình hoặc dán vào các công cụ trực quan hóa kế hoạch thực thi (như PEV hoặc explain.depesz.com).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-182', 'PostgreSQL', 'PostgreSQL', 'Junior', 'What is connection pooling?', 'Connection pooling là gì?', '**Connection pooling** is a software engineering technique where a cache of database connections (a "pool") is maintained by a database connection manager, allowing connections to be reused instead of opened and closed repeatedly.

In a traditional setup, every database interaction requires a client application to establish a new network connection, complete a TCP handshake, authenticate, and close the connection when the query is finished. Connection pooling avoids this overhead by keeping a configured number of connections open and ready to use.

### How Connection Pooling Works
1. **Initialization**: When the backend application starts, the connection pool manager creates a predefined number of database connections (e.g., 10 connections) and keeps them in an idle state.
2. **Acquisition**: When a thread needs to query the database, it requests an active connection from the pool instead of creating a new one.
3. **Usage**: The thread performs its database operations using the acquired connection.
4. **Release**: Once the database work is complete, the connection is not closed. Instead, it is returned (released) back to the pool, making it available for other requests.

Popular connection pool libraries in the Java/Spring ecosystem include **HikariCP** (the default in Spring Boot), **Apache DBCP**, and **tomcat-jdbc**.', '**Connection pooling (Bể chứa kết nối)** là một kỹ thuật phần mềm duy trì sẵn một danh sách các kết nối cơ sở dữ liệu được mở sẵn (gọi là "pool") bởi một bộ quản lý kết nối, cho phép tái sử dụng các kết nối này thay vì liên tục mở và đóng chúng.

Trong mô hình truyền thống, mỗi tương tác với cơ sở dữ liệu yêu cầu ứng dụng client thiết lập một kết nối mạng mới, hoàn thành bắt tay TCP (TCP handshake), xác thực thông tin đăng nhập và đóng kết nối sau khi truy vấn hoàn thành. Connection pooling loại bỏ chi phí hao phí này bằng cách duy trì một lượng kết nối được cấu hình trước luôn mở và sẵn sàng hoạt động.

### Cách thức hoạt động của Connection Pooling
1. **Khởi tạo**: Khi ứng dụng backend khởi động, bộ quản lý pool sẽ tạo ra một số lượng kết nối cơ sở dữ liệu cố định (ví dụ: 10 kết nối) và giữ chúng ở trạng thái rảnh rỗi (idle).
2. **Yêu cầu (Acquisition)**: Khi một luồng xử lý (thread) cần truy xuất cơ sở dữ liệu, nó yêu cầu một kết nối đang mở sẵn từ pool thay vì tạo mới.
3. **Sử dụng**: Luồng xử lý thực thi các tác vụ SQL thông qua kết nối vừa nhận được.
4. **Giải phóng (Release)**: Khi công việc hoàn tất, kết nối không bị đóng lại mà được trả lại (release) vào pool để luồng khác có thể tái sử dụng.

Các thư viện connection pool phổ biến trong hệ sinh thái Java/Spring bao gồm **HikariCP** (mặc định trong Spring Boot), **Apache DBCP** và **tomcat-jdbc**.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-183', 'PostgreSQL', 'PostgreSQL', 'Mid', 'Why is connection pooling important in backend applications?', 'Tại sao connection pooling lại quan trọng trong các ứng dụng backend?', 'Connection pooling is critical for backend systems to ensure high performance, stability, and resource optimization under heavy concurrent loads.

### Key Reasons Why Connection Pooling is Important
1. **Reduces Latency (Performance Boost)**: Creating a database connection is highly expensive (TCP handshakes, SSL negotiation, DB authentication, process forks on the DB server). Reusing existing connections reduces query response time dramatically from tens of milliseconds to sub-milliseconds.
2. **Protects Database Server Resources**: Databases like PostgreSQL spawn a backend process (or thread) for each incoming connection. Uncontrolled connection creation can quickly exhaust the database server''s RAM and CPU, leading to slow queries or crashes. A pool caps the maximum active connections to a safe limit.
3. **Improves Application Scalability**: By sharing a small set of connections among a much larger number of application requests, a backend can handle thousands of concurrent requests using only a few dozen database connections.
4. **Manages Spikes in Traffic**: When traffic surges, the pool acts as a buffer. Instead of crashing the database with excessive connections, requests wait in a queue for a connection to become free (up to a timeout limit, e.g., `connection-timeout: 30000ms`).
5. **Connection Lifecycle Management**: Modern pools (like HikariCP) automatically handle dead connection detection, keep-alive checks, and recycling of stale connections, reducing manual boilerplate code.', 'Connection pooling là thành phần cực kỳ quan trọng đối với các hệ thống backend nhằm đảm bảo hiệu năng cao, sự ổn định và tối ưu hóa tài nguyên dưới tải trọng truy cập đồng thời lớn.

### Các lý do chính khiến Connection Pooling quan trọng
1. **Giảm thiểu độ trễ (Tăng tốc hiệu năng)**: Việc khởi tạo một kết nối cơ sở dữ liệu mới rất tốn kém (bắt tay TCP, thiết lập SSL, xác thực thông tin đăng nhập DB, cấp phát tiến trình/luồng trên DB server). Tái sử dụng kết nối giúp giảm thời gian phản hồi truy vấn từ hàng chục mili giây xuống dưới 1 mili giây.
2. **Bảo vệ tài nguyên Database Server**: Các cơ sở dữ liệu như PostgreSQL khởi tạo một tiến trình xử lý (process) cho mỗi kết nối mới. Nếu số lượng kết nối tăng không kiểm soát, máy chủ DB sẽ nhanh chóng cạn kiệt RAM và CPU dẫn đến treo máy. Connection pool giới hạn số kết nối hoạt động tối đa ở ngưỡng an toàn.
3. **Cải thiện khả năng mở rộng (Scalability)**: Bằng cách chia sẻ một tập hợp nhỏ các kết nối cho số lượng lớn yêu cầu người dùng, ứng dụng backend có thể xử lý hàng nghìn yêu cầu đồng thời chỉ với vài chục kết nối cơ sở dữ liệu thực tế.
4. **Kiểm soát lưu lượng truy cập tăng đột biến**: Khi lượng truy cập tăng đột ngột, pool đóng vai trò như một bộ đệm. Thay vì làm sập cơ sở dữ liệu bằng cách mở quá nhiều kết nối, các luồng yêu cầu sẽ xếp hàng đợi kết nối rảnh rỗi (cho đến giới hạn thời gian chờ, ví dụ: `connection-timeout: 30000ms`).
5. **Tự động quản lý vòng đời kết nối**: Các pool hiện đại (như HikariCP) tự động phát hiện kết nối chết (broken connections), kiểm tra duy trì kết nối (keep-alive) và thay thế định kỳ các kết nối cũ, giảm bớt mã lệnh thủ công.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-184', 'Redis', 'Redis', 'Junior', 'What is Redis?', 'Redis là gì?', '**Redis** (Remote Dictionary Server) is an open-source, in-memory, key-value data structure store used as a database, cache, message broker, and streaming engine.

### Key Characteristics of Redis
1. **In-Memory Storage**: Unlike traditional relational databases that store data primarily on disk, Redis keeps all data in RAM, resulting in extremely low latency (sub-millisecond operations) and high throughput.
2. **Key-Value Model with Rich Data Structures**: Data is stored as keys associated with various types of values. Redis supports diverse data structures beyond simple strings:
   - **Strings**: Binary-safe text or numeric data.
   - **Lists**: Lists of strings sorted by insertion order.
   - **Sets**: Unordered collections of unique strings.
   - **Sorted Sets (ZSet)**: Non-repeating strings where each member is associated with a score for sorting.
   - **Hashes**: Maps of fields and values (similar to objects or maps).
   - **Bitmaps, HyperLogLogs, Geospatial indexes**.
3. **Persistence Options**: Although it is an in-memory database, it can persist data to disk using RDB (Redis Database snapshots) and AOF (Append Only File) logs.
4. **High Availability and Scalability**: Supports master-replica replication, Redis Sentinel (automatic failover), and Redis Cluster (horizontal sharding).', '**Redis** (Remote Dictionary Server) là một hệ thống lưu trữ cấu trúc dữ liệu khóa-giá trị (key-value) mã nguồn mở, hoạt động hoàn toàn trên bộ nhớ trong (in-memory). Nó được sử dụng phổ biến làm cơ sở dữ liệu, bộ nhớ đệm (cache), hệ thống chuyển tiếp tin nhắn (message broker) và công cụ truyền tải dữ liệu (streaming engine).

### Các đặc điểm chính của Redis
1. **Lưu trữ trên bộ nhớ trong (In-Memory)**: Khác với các hệ quản trị cơ sở dữ liệu quan hệ truyền thống lưu dữ liệu chủ yếu trên đĩa cứng, Redis giữ toàn bộ dữ liệu trên RAM, mang lại độ trễ cực thấp (dưới 1 mili giây) và thông lượng rất cao.
2. **Mô hình Khóa-Giá trị với Cấu trúc Dữ liệu Đa dạng**: Dữ liệu được lưu trữ dạng cặp Key-Value. Redis không chỉ hỗ trợ kiểu chuỗi (String) đơn giản mà còn hỗ trợ nhiều cấu trúc dữ liệu nâng cao:
   - **Strings**: Chuỗi văn bản hoặc số liệu nhị phân an toàn.
   - **Lists**: Danh sách các chuỗi được sắp xếp theo thứ tự thêm vào.
   - **Sets**: Tập hợp các chuỗi không trùng lặp và không có thứ tự.
   - **Sorted Sets (ZSet)**: Tập hợp các chuỗi không trùng lặp, mỗi phần tử liên kết với một điểm số (score) để sắp xếp.
   - **Hashes**: Bản đồ chứa các trường (fields) và giá trị (values), giống như đối tượng (Object) hoặc Map.
   - **Bitmaps, HyperLogLogs, Geospatial indexes** (chỉ mục địa lý).
3. **Khả năng bền vững dữ liệu (Persistence)**: Mặc dù lưu trên RAM, Redis vẫn có thể lưu dữ liệu xuống đĩa cứng định kỳ thông qua cơ chế RDB (chụp ảnh dữ liệu nhanh) hoặc AOF (ghi nhật ký các lệnh thay đổi).
4. **Khả năng sẵn sàng cao và Mở rộng**: Hỗ trợ mô hình nhân bản Master-Replica, Redis Sentinel (tự động chuyển vùng khi master gặp sự cố) và Redis Cluster (phân mảnh dữ liệu theo chiều ngang).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-185', 'Redis', 'Redis', 'Mid', 'Why is Redis fast?', 'Tại sao Redis lại nhanh?', 'Redis can handle hundreds of thousands of operations per second with sub-millisecond latency. This extreme speed is due to several architectural design choices:

1. **In-Memory Operations**: Read and write operations occur directly in the computer''s Random Access Memory (RAM). RAM access speeds are orders of magnitude faster than solid-state drives (SSDs) or hard drives (HDDs), completely avoiding disk seek times and I/O bottlenecks during normal operation.
2. **Single-Threaded Architecture (for Commands)**:
   - Redis processes client commands using a single main thread.
   - This design eliminates the overhead of thread context switching, which is expensive for CPU performance.
   - It avoids race conditions, locking mechanisms (like mutexes), and deadlocks, streamlining the core execution path.
   - *Note*: While command execution is single-threaded, Redis uses background threads for non-blocking operations like deleting large objects (`UNLINK`), saving files to disk, and network I/O (since Redis 6.0).
3. **Non-Blocking I/O Multiplexing**: Redis uses an event loop based on I/O multiplexing selectors (like `epoll` on Linux, `kqueue` on macOS) to handle thousands of concurrent client connections efficiently. A single thread can monitor multiple sockets and process requests as soon as data is ready.
4. **Highly Optimized Internal Data Structures**: Redis uses custom, low-level C data structures designed for maximum memory efficiency and search performance, such as skip lists (for Sorted Sets), zip lists (for compact memory representations), and hash tables with progressive rehashing.', 'Redis có thể xử lý hàng trăm nghìn thao tác mỗi giây với độ trễ dưới 1 mili giây. Tốc độ vượt trội này có được nhờ vào các lựa chọn thiết kế kiến trúc cốt lõi sau:

1. **Thao tác trực tiếp trên Bộ nhớ trong (RAM)**: Tất cả các thao tác đọc và ghi dữ liệu đều diễn ra trực tiếp trên RAM. Tốc độ truy cập RAM nhanh hơn hàng trăm đến hàng nghìn lần so với ổ đĩa cứng (SSD hoặc HDD), loại bỏ hoàn toàn thời gian định vị đầu đọc (seek time) và nghẽn cổ chai I/O đĩa khi chạy thực tế.
2. **Kiến trúc Đơn luồng (cho việc xử lý câu lệnh)**:
   - Redis sử dụng một luồng chính duy nhất để xử lý tuần tự các câu lệnh của client.
   - Thiết kế này loại bỏ chi phí chuyển ngữ cảnh luồng (thread context switching) - vốn rất tốn năng lực xử lý CPU.
   - Tránh được các vấn đề tranh chấp dữ liệu (race conditions), cơ chế khóa phức tạp (như mutex) và lỗi khóa chết (deadlock), giúp đơn giản hóa và tăng tốc luồng xử lý.
   - *Lưu ý*: Mặc dù luồng chạy lệnh là đơn luồng, Redis vẫn sử dụng các luồng chạy ngầm cho các tác vụ không chặn (non-blocking) như xóa các đối tượng lớn (`UNLINK`), lưu dữ liệu xuống đĩa và xử lý I/O mạng (từ Redis 6.0).
3. **Cơ chế Multiplexing I/O không chặn (Non-Blocking)**: Redis sử dụng vòng lặp sự kiện (event loop) dựa trên các bộ chọn dồn kênh I/O (như `epoll` trên Linux, `kqueue` trên macOS) để quản lý hàng nghìn kết nối đồng thời từ các client một cách hiệu quả. Một luồng duy nhất có thể giám sát nhiều socket mạng và xử lý yêu cầu ngay khi dữ liệu sẵn sàng.
4. **Cấu trúc Dữ liệu Nội bộ Tối ưu hóa Cao**: Redis được xây dựng bằng ngôn ngữ C với các cấu trúc dữ liệu tối ưu hóa bộ nhớ và hiệu năng truy tìm, chẳng hạn như Skip List (cho Sorted Sets), Zip List (để tiết kiệm RAM) và các bảng băm có cơ chế phân bổ lại dung lượng tuần tự (progressive rehashing).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-186', 'Redis', 'Redis', 'Junior', 'What are common use cases for Redis?', 'Các trường hợp sử dụng phổ biến của Redis là gì?', 'Redis is highly versatile and is commonly used in modern web architectures for the following purposes:

1. **Caching**:
   - Storing database query results, user sessions, or static API responses.
   - Significantly speeds up read requests and protects backend databases from high load.
   - Uses Time-To-Live (TTL) settings to automatically expire stale cache data.
2. **Session Store**:
   - Used in distributed environments to store user session tokens or shopping cart data.
   - Ensures that when a user hits different backend server instances behind a load balancer, their session remains consistent and quickly retrievable.
3. **Rate Limiting**:
   - Restricting the number of requests a user can make to an API within a specific timeframe (e.g., maximum 100 requests per minute).
   - Easily implemented using atomic Redis commands like `INCR` and `EXPIRE`.
4. **Distributed Locks**:
   - Preventing race conditions across multiple instances of microservices.
   - Utilizing `SETNX` (Set if Not Exists) or the Redlock algorithm to ensure that only one instance performs a specific task at a time.
5. **Message Queue / Pub-Sub**:
   - Using Redis Pub/Sub channels for real-time notification broadcasting.
   - Using Redis Lists (e.g., `LPUSH` and `BRPOP`) or Redis Streams as simple, high-performance message brokers.
6. **Leaderboards / Ranking Systems**:
   - Real-time gaming or social media leaderboards.
   - Powered by Redis **Sorted Sets (ZSets)**, which automatically keep items sorted by scores.', 'Redis cực kỳ linh hoạt và thường được sử dụng trong các kiến trúc web hiện đại cho các mục đích sau:

1. **Bộ nhớ đệm (Caching)**:
   - Lưu trữ kết quả truy vấn cơ sở dữ liệu, phiên làm việc người dùng hoặc phản hồi API tĩnh.
   - Giảm tải đáng kể cho cơ sở dữ liệu chính và tăng tốc độ đọc dữ liệu.
   - Sử dụng tính năng Time-To-Live (TTL) to tự động hủy các dữ liệu cache đã hết hạn.
2. **Quản lý Phiên làm việc (Session Store)**:
   - Lưu trữ token phiên (session token) hoặc giỏ hàng của người dùng trong môi trường phân tán.
   - Đảm bảo rằng dù người dùng được định tuyến đến bất kỳ máy chủ nào sau bộ cân bằng tải (load balancer), thông tin phiên của họ vẫn nhất quán và được truy xuất tức thì.
3. **Giới hạn Tần suất Truy cập (Rate Limiting)**:
   - Giới hạn số lượng yêu cầu một người dùng có thể gửi đến API trong một khoảng thời gian nhất định (ví dụ: tối đa 100 yêu cầu/phút).
   - Dễ dàng triển khai thông qua các lệnh nguyên tử của Redis như `INCR` và `EXPIRE`.
4. **Khóa phân tán (Distributed Locks)**:
   - Ngăn chặn tình trạng tranh chấp tài nguyên (race conditions) giữa nhiều instance của các microservices.
   - Sử dụng lệnh `SETNX` (chỉ ghi nếu chưa tồn tại) hoặc thuật toán Redlock để đảm bảo tại một thời điểm chỉ có duy nhất một instance được thực hiện tác vụ đặc biệt.
5. **Hàng đợi tin nhắn / Pub-Sub (Hộp thư và đăng ký)**:
   - Sử dụng Redis Pub/Sub cho các thông báo thời gian thực.
   - Sử dụng Redis Lists (thông qua lệnh `LPUSH` và `BRPOP`) hoặc Redis Streams làm bộ chuyển tiếp tin nhắn (message broker) đơn giản nhưng hiệu năng cao.
6. **Bảng xếp hạng thời gian thực (Leaderboards)**:
   - Phổ biến trong game trực tuyến hoặc các trang mạng xã hội.
   - Tận dụng cấu trúc dữ liệu **Sorted Sets (ZSets)** giúp tự động sắp xếp các phần tử dựa trên điểm số (score) của chúng một cách tối ưu.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-187', 'Redis', 'Redis', 'Junior', 'What is the difference between Redis and a relational database?', 'Sự khác biệt giữa Redis và cơ sở dữ liệu quan hệ là gì?', 'Redis and Relational Databases (RDBMS like PostgreSQL or MySQL) are built for fundamentally different purposes.

### Summary Comparison Table
| Feature | Redis | Relational Database (RDBMS) |
| :--- | :--- | :--- |
| **Storage Medium** | Primarily RAM (In-memory), optional disk backup | Primarily Disk (HDD/SSD) with memory buffering |
| **Data Model** | Key-Value with structured data types (List, Set, Hash, etc.) | Relational tables with rows, columns, and relations |
| **Query Language**| Custom Redis commands | SQL (Structured Query Language) |
| **Speed & Latency**| Extremely fast (sub-millisecond latency) | Moderate (constrained by disk I/O, joins, indexes) |
| **Relationships** | No native support for relationships or joins | Built-in support for complex relationships and joins |
| **ACID Compliance**| Limited/basic transaction support (MULTI/EXEC) | Fully ACID compliant (highly strict transactions) |
| **Primary Use Case**| Caching, session storage, real-time counters | Primary source of truth, transactional business data |', 'Redis và Cơ sở dữ liệu quan hệ (RDBMS như PostgreSQL hay MySQL) được xây dựng cho các mục đích sử dụng hoàn toàn khác nhau.

### Bảng so sánh tóm tắt
| Đặc điểm | Redis | Cơ sở dữ liệu quan hệ (RDBMS) |
| :--- | :--- | :--- |
| **Môi trường lưu trữ** | Chủ yếu là RAM (In-memory), tùy chọn sao lưu ra đĩa | Chủ yếu trên Đĩa (HDD/SSD), sử dụng cache bộ nhớ đệm |
| **Mô hình dữ liệu** | Khóa-Giá trị (Key-Value) với các kiểu cấu trúc phong phú | Các bảng quan hệ gồm các hàng, cột và liên kết |
| **Ngôn ngữ truy vấn**| Các lệnh chuyên biệt của Redis | SQL (Ngôn ngữ truy vấn có cấu trúc) |
| **Tốc độ & Độ trễ** | Cực nhanh (độ trễ dưới 1 mili giây) | Trung bình (bị giới hạn bởi I/O đĩa, phép join, index) |
| **Mối liên kết** | Không hỗ trợ quan hệ ngoại khóa hay phép JOIN tự nhiên | Hỗ trợ mạnh mẽ các mối quan hệ phức tạp và phép JOIN |
| **Chuẩn ACID** | Hỗ trợ transaction ở mức cơ bản (MULTI/EXEC) | Tuân thủ nghiêm ngặt chuẩn ACID (giao dịch an toàn) |
| **Mục đích chính** | Làm bộ nhớ đệm, lưu phiên làm việc, đếm số liệu | Lưu trữ dữ liệu gốc đáng tin cậy, giao dịch tài chính |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-188', 'Redis', 'Redis', 'Junior', 'What Redis data types are commonly used?', 'Các kiểu dữ liệu nào trong Redis thường được sử dụng phổ biến?', 'Redis is an in-memory, key-value data store that supports various data structures. The most commonly used data types are:

1. **String**: The most basic type, holding text, serialized JSON, or binary data (up to 512MB). Often used for session tokens or simple cache keys.
2. **List**: A sequence of ordered strings sorted by insertion order. Implemented as linked lists, ideal for message queues (`LPUSH`, `RPOP`).
3. **Set**: An unordered collection of unique strings. Useful for tracking unique visitors, tags, or performing set operations like intersection, union, and difference (`SADD`, `SINTER`).
4. **Sorted Set (ZSet)**: Similar to Sets, but every member is associated with a floating-point score, allowing elements to be kept sorted. Ideal for leaderboards or rate limiters.
5. **Hash**: A map between string fields and string values, resembling a JSON object. Perfect for storing structured domain objects (e.g., user profiles with fields like name, email).
6. **Bitmap / HyperLogLog / Geospatial**: Advanced types used for tracking bit-level flags, estimating high-cardinality values with low memory, and storing coordinate-based spatial data respectively.', 'Redis là hệ thống lưu trữ dữ liệu key-value trong bộ nhớ (in-memory) hỗ trợ nhiều cấu trúc dữ liệu khác nhau. Các kiểu dữ liệu phổ biến nhất bao gồm:

1. **String**: Kiểu dữ liệu cơ bản nhất, lưu trữ chuỗi văn bản, JSON đã được serialize hoặc dữ liệu nhị phân (tối đa 512MB). Thường dùng làm session token hoặc cache key đơn giản.
2. **List**: Danh sách các chuỗi được sắp xếp theo thứ tự thêm vào. Được triển khai dưới dạng linked list, lý tưởng cho hàng đợi tin nhắn (`LPUSH`, `RPOP`).
3. **Set**: Tập hợp các chuỗi không trùng lặp và không có thứ tự. Hữu ích cho việc theo dõi người dùng duy nhất, gắn thẻ (tag) hoặc thực hiện các phép toán tập hợp như giao, hợp, hiệu (`SADD`, `SINTER`).
4. **Sorted Set (ZSet)**: Tương tự như Set nhưng mỗi phần tử đi kèm với một điểm số (score) dạng số thực để sắp xếp thứ tự. Thường dùng cho bảng xếp hạng (leaderboard) hoặc bộ giới hạn tần suất (rate limiter).
5. **Hash**: Một bản đồ (map) giữa các trường (field) và giá trị (value) dạng chuỗi, tương tự như đối tượng JSON. Hoàn hảo để lưu trữ các đối tượng có cấu trúc (ví dụ: thông tin user gồm name, email).
6. **Bitmap / HyperLogLog / Geospatial**: Các kiểu dữ liệu nâng cao dùng để theo dõi cờ bit, ước lượng số lượng phần tử duy nhất với bộ nhớ tối thiểu, và lưu trữ dữ liệu tọa độ không gian địa lý.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-189', 'Redis', 'Redis', 'Mid', 'How can Redis be used as a cache?', 'Làm thế nào để sử dụng Redis như một bộ nhớ đệm (cache)?', 'Redis is widely used as a cache due to its sub-millisecond latency, in-memory architecture, and rich features. Implementing Redis as a cache involves:

1. **Cache Pattern**: Usually implemented via the **Cache-Aside** (Lazy Loading) pattern. When data is requested, the application checks Redis first. If it''s a hit, it returns the data. If it''s a miss, it queries the primary database, stores the result in Redis with a TTL, and returns it.
2. **Serialization**: Objects must be serialized (e.g., into JSON via Jackson or binary format using JDK/Kryo serialization) before being stored as Redis Strings or Hashes.
3. **Eviction Policies**: When memory is full, Redis uses eviction policies like `allkeys-lru` (Least Recently Used) or `volatile-lru` to discard old or unused keys automatically.
4. **Spring Boot Integration**: In Spring Boot, this is commonly done using Spring Cache abstraction:
   ```java
   @Cacheable(value = "users", key = "#id")
   public User getUserById(Long id) {
       return userRepository.findById(id).orElseThrow();
   }
   ```', 'Redis được sử dụng rộng rãi làm bộ nhớ đệm (cache) nhờ độ trễ cực thấp (dưới mili giây), kiến trúc in-memory và các tính năng phong phú. Việc sử dụng Redis làm cache bao gồm các khía cạnh:

1. **Mẫu thiết kế Cache**: Thường được triển khai thông qua mô hình **Cache-Aside** (Lazy Loading). Khi ứng dụng yêu cầu dữ liệu, nó sẽ kiểm tra Redis trước. Nếu có (cache hit), dữ liệu được trả về ngay. Nếu không có (cache miss), ứng dụng truy vấn database chính, lưu kết quả vào Redis kèm theo TTL rồi trả về cho người dùng.
2. **Tuần tự hóa (Serialization)**: Đối tượng Java cần được tuần tự hóa (ví dụ: sang JSON bằng Jackson hoặc dạng nhị phân bằng JDK/Kryo serialization) trước khi lưu vào Redis dưới dạng String hoặc Hash.
3. **Chính sách giải phóng bộ nhớ (Eviction Policies)**: Khi bộ nhớ đầy, Redis sử dụng các chính sách như `allkeys-lru` (Least Recently Used - ít được sử dụng gần đây nhất) hoặc `volatile-lru` để tự động loại bỏ các key cũ hoặc ít dùng.
4. **Tích hợp Spring Boot**: Trong Spring Boot, việc này thường được thực hiện thông qua cơ chế trừu tượng hóa Spring Cache:
   ```java
   @Cacheable(value = "users", key = "#id")
   public User getUserById(Long id) {
       return userRepository.findById(id).orElseThrow();
   }
   ```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-190', 'Redis', 'Redis', 'Mid', 'What is cache-aside?', 'Cache-aside là gì?', '**Cache-Aside** (also known as Lazy Loading) is a cache architectural pattern where the application code is responsible for managing the cache, keeping the database and cache distinct.

- **Read Path**: The application requests data from the cache.
  1. If the key exists (Cache Hit), return the data.
  2. If the key does not exist (Cache Miss), query the database, write the data back into the cache (often with a TTL), and return the data.
- **Write Path**: When updating data, the application updates the database directly and then invalidates (deletes) the cache key to avoid serving stale data.
- **Pros**: Easy to implement; cache only contains data that is actually requested (memory efficient); database failures do not completely crash the application (resiliency).
- **Cons**: First request for a data item is always a cache miss (higher latency); data inconsistency can occur if the cache invalidation step fails during a write operation.', '**Cache-Aside** (còn gọi là Lazy Loading) là một mô hình kiến trúc cache mà trong đó ứng dụng trực tiếp chịu trách nhiệm quản lý cache, giữ cho database và cache hoạt động tách biệt.

- **Luồng Đọc (Read)**: Ứng dụng yêu cầu dữ liệu từ cache.
  1. Nếu khóa tồn tại (Cache Hit), trả về dữ liệu ngay lập tức.
  2. Nếu khóa không tồn tại (Cache Miss), ứng dụng truy vấn cơ sở dữ liệu chính, ghi dữ liệu vừa lấy được vào cache (thường kèm theo TTL), và trả về dữ liệu.
- **Luồng Ghi (Write)**: Khi cập nhật dữ liệu, ứng dụng cập nhật trực tiếp vào database chính và sau đó xóa (invalidate) key tương ứng trong cache để tránh dữ liệu cũ (stale data).
- **Ưu điểm**: Dễ triển khai; cache chỉ chứa những dữ liệu thực sự được yêu cầu (tiết kiệm bộ nhớ); ứng dụng không bị sập hoàn toàn nếu database gặp sự cố (tính phục hồi cao).
- **Nhược điểm**: Lần đầu tiên đọc dữ liệu luôn gặp cache miss (độ trễ cao hơn); có nguy cơ bất đồng bộ dữ liệu nếu bước xóa cache bị lỗi khi thực hiện ghi.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-191', 'Redis', 'Redis', 'Junior', 'What is cache expiration or TTL?', 'Thời hạn hết hạn của cache hoặc TTL là gì?', '**Cache Expiration** or **Time-To-Live (TTL)** is a mechanism where cached data is assigned a lifespan, after which it is automatically deleted from the cache memory.

- **Purpose**: It prevents the cache from growing indefinitely and ensures that stale data is eventually discarded, allowing the application to fetch fresh data from the primary database on the next request.
- **Redis Implementation**: TTL can be set in seconds or milliseconds using commands like `EXPIRE key seconds` or during creation with `SET key value EX seconds`.
- **Strategy**: Setting the right TTL is a tradeoff:
  - *Too short*: Higher database load due to frequent cache misses.
  - *Too long*: Stale data persists in the system, risking inconsistencies.
- **Eviction vs Expiration**: Expiration is time-based (passive/active deletion of expired keys), while eviction is capacity-based (deleting keys based on LRU/LFU algorithms when memory limits are reached).', '**Cache Expiration** hoặc **Time-To-Live (TTL)** là cơ chế gán cho dữ liệu trong cache một thời hạn tồn tại nhất định, sau thời gian đó dữ liệu sẽ tự động bị xóa khỏi bộ nhớ cache.

- **Mục đích**: Ngăn bộ nhớ đệm phình to vô hạn và đảm bảo dữ liệu cũ cuối cùng sẽ bị loại bỏ, giúp ứng dụng lấy dữ liệu mới từ database chính ở lần yêu cầu tiếp theo.
- **Triển khai trong Redis**: TTL có thể cấu hình theo giây hoặc mili giây bằng cách sử dụng các lệnh như `EXPIRE key seconds` hoặc khi tạo key với `SET key value EX seconds`.
- **Chiến lược**: Việc chọn TTL phù hợp là một sự đánh đổi:
  - *Quá ngắn*: Tăng tải lên cơ sở dữ liệu chính do xảy ra cache miss liên tục.
  - *Quá dài*: Dữ liệu cũ tồn tại lâu trong hệ thống, dễ dẫn đến mất đồng bộ dữ liệu.
- **Eviction (Loại bỏ) vs Expiration (Hết hạn)**: Expiration dựa trên thời gian (xóa chủ động/thụ động các key hết hạn), còn Eviction dựa trên dung lượng bộ nhớ (xóa các key dựa trên thuật toán LRU/LFU khi vượt quá giới hạn bộ nhớ).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-192', 'Redis', 'Redis', 'Mid', 'What is cache invalidation?', 'Vô hiệu hóa cache (cache invalidation) là gì?', '**Cache Invalidation** is the process of declaring cached data as invalid or obsolete and removing it from the cache, ensuring the application fetches the latest, correct data from the primary database on subsequent reads.

- **Trigger**: It is typically triggered immediately after a write, update, or delete operation occurs in the database for the corresponding resource.
- **Techniques**:
  1. **Purge/Delete**: Explicitly removing the specific cache key (most common in Cache-Aside).
  2. **Refresh/Write-Through**: Automatically updating the cache with the new value when the database is updated.
  3. **Time-based (TTL)**: Relying on expiration, which is a passive form of invalidation.
- **Challenge**: Cache invalidation is famously one of the two hardest problems in computer science. If invalidation fails or is delayed (e.g., due to network issues), clients will retrieve inconsistent or outdated data, creating split-brain scenarios.', '**Cache Invalidation** (Vô hiệu hóa bộ nhớ đệm) là quá trình khai báo dữ liệu trong cache không còn hợp lệ hoặc đã lỗi thời và loại bỏ nó khỏi cache, đảm bảo ứng dụng sẽ truy vấn dữ liệu mới nhất, chính xác nhất từ cơ sở dữ liệu chính trong các lần đọc tiếp theo.

- **Thời điểm kích hoạt**: Thường được kích hoạt ngay sau khi một thao tác ghi, cập nhật hoặc xóa dữ liệu diễn ra thành công trong database chính đối với tài nguyên tương ứng.
- **Các phương pháp**:
  1. **Purge/Delete (Xóa trực tiếp)**: Xóa bỏ trực tiếp cache key cụ thể (phổ biến nhất trong mô hình Cache-Aside).
  2. **Write-Through/Refresh (Ghi đè)**: Tự động cập nhật cache với giá trị mới khi database được cập nhật.
  3. **Dựa trên thời gian (TTL)**: Phụ thuộc vào cơ chế hết hạn tự động, đây là hình thức vô hiệu hóa thụ động.
- **Thách thức**: Vô hiệu hóa cache là một trong hai bài toán khó nhất trong khoa học máy tính. Nếu việc vô hiệu hóa thất bại hoặc bị trễ (ví dụ do sự cố mạng), người dùng sẽ nhận được dữ liệu cũ không nhất quán, gây ra hiện tượng không đồng bộ dữ liệu.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-193', 'Redis', 'Redis', 'Junior', 'What is a cache miss?', 'Cache miss là gì?', 'A **Cache Miss** occurs when an application searches for a specific piece of data in the cache, but that data is not found (either because it was never cached, has expired, or was evicted).

- **Flow**: When a cache miss happens, the application must fallback to query the slower primary data store (like a relational database), retrieve the data, write it to the cache for future requests, and then return it to the client.
- **Metrics**: **Cache Hit Ratio** is calculated as `Hits / (Hits + Misses)`. A high cache miss rate (low hit ratio) indicates inefficient caching strategies or rapidly changing data patterns.
- **Risks**: Sudden spikes in cache misses (e.g., during cache stampede or cache penetration) can overwhelm the primary database, leading to high latency or system crashes.', '**Cache Miss** (Lỗi tìm kiếm bộ nhớ đệm) xảy ra khi ứng dụng tìm kiếm một phần dữ liệu cụ thể trong cache nhưng không tìm thấy (do dữ liệu chưa từng được cache, đã hết hạn TTL, hoặc đã bị giải phóng bộ nhớ).

- **Quy trình xử lý**: Khi gặp cache miss, ứng dụng phải chuyển sang truy vấn kho lưu trữ dữ liệu chính chậm hơn (như cơ sở dữ liệu quan hệ), lấy dữ liệu ra, ghi nó vào cache để phục vụ cho các yêu cầu sau, rồi trả về cho client.
- **Chỉ số đo lường**: **Tỷ lệ trúng cache (Cache Hit Ratio)** được tính bằng `Hits / (Hits + Misses)`. Tỷ lệ cache miss cao (tỷ lệ hit thấp) cho thấy chiến lược cache kém hiệu quả hoặc dữ liệu thay đổi quá nhanh.
- **Rủi ro**: Việc gia tăng đột biến cache miss (ví dụ: trong hiện tượng cache stampede hoặc cache penetration) có thể gây quá tải cho database chính, dẫn đến tăng độ trễ hoặc sập hệ thống.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-194', 'Redis', 'Redis', 'Mid', 'What problems can occur when cached data becomes stale?', 'Những vấn đề gì có thể xảy ra khi dữ liệu được cache bị cũ (stale)?', 'Stale cached data occurs when the underlying data in the primary database is updated, but the cache continues to store and serve the old version. This leads to several issues:

1. **Data Inconsistency**: Users see outdated information (e.g., incorrect stock availability, old prices, or outdated account balances), leading to poor user experience or business logic errors.
2. **Double Writes / Race Conditions**: If the application reads stale state from the cache to perform validation before writing back to the database, it can overwrite concurrent updates.
3. **Security Risks**: Outdated authorization details or session status in the cache could grant users privileges they no longer possess.
4. **Compliance & Auditing Issues**: Mismatches between cached data and system of record can lead to transactional discrepancies and audit failures in sensitive fields like finance or healthcare.', 'Dữ liệu cache bị cũ (stale data) xảy ra khi dữ liệu gốc trong cơ sở dữ liệu chính đã được cập nhật nhưng cache vẫn tiếp tục lưu giữ và trả về phiên bản cũ. Điều này dẫn đến các vấn đề nghiêm trọng:

1. **Mất nhất quán dữ liệu (Data Inconsistency)**: Người dùng nhìn thấy thông tin lỗi thời (ví dụ: số lượng hàng tồn kho không chính xác, giá cũ hoặc số dư tài khoản chưa cập nhật), gây trải nghiệm kém hoặc lỗi logic nghiệp vụ.
2. **Ghi đè dữ liệu / Race Conditions**: Nếu ứng dụng đọc trạng thái cũ từ cache để kiểm tra tính hợp lệ trước khi ghi dữ liệu mới vào database, nó có thể ghi đè và làm mất các cập nhật đồng thời khác.
3. **Rủi ro bảo mật**: Thông tin phân quyền hoặc trạng thái session cũ lưu trong cache có thể cấp cho người dùng quyền truy cập mà lẽ ra họ không còn được phép.
4. **Vấn đề tuân thủ & Kiểm toán**: Sự sai lệch giữa dữ liệu cache và database gốc có thể dẫn đến sai sót trong các giao dịch và thất bại khi kiểm toán hệ thống trong các lĩnh vực nhạy cảm như tài chính hay y tế.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-195', 'WebSocket', 'WebSocket', 'Junior', 'What is WebSocket?', 'WebSocket là gì?', '**WebSocket** is a computer communications protocol providing full-duplex, bidirectional communication channels over a single, long-lived TCP connection.

- **How it works**: It starts with a standard HTTP request containing a `Upgrade: websocket` header (the WebSocket handshake). Once approved, the connection switches from HTTP to WebSocket protocol (`ws://` or `wss://`), allowing both client and server to send messages independently at any time without the overhead of HTTP headers.
- **Key features**:
  - *Full-Duplex*: Both client and server can send messages simultaneously.
  - *Low Overhead*: Eliminates HTTP request/response header overhead (which can be several kilobytes) for every message, replacing it with a small frame header (typically 2-10 bytes).
  - *Real-time*: Extremely low latency, making it ideal for live, interactive applications.', '**WebSocket** là một giao thức truyền thông cung cấp kênh giao tiếp hai chiều (bidirectional), song công toàn phần (full-duplex) trên một kết nối TCP duy nhất, tồn tại lâu dài (long-lived).

- **Cách thức hoạt động**: Bắt đầu bằng một yêu cầu HTTP tiêu chuẩn chứa header `Upgrade: websocket` (bắt tay - handshake). Sau khi được chấp nhận, kết nối sẽ chuyển từ HTTP sang giao thức WebSocket (`ws://` hoặc `wss://`), cho phép cả client và server gửi tin nhắn độc lập bất kỳ lúc nào mà không cần tạo lại kết nối hay gửi lại HTTP headers.
- **Đặc điểm chính**:
  - *Song công toàn phần (Full-Duplex)*: Cả client và server đều có thể gửi tin nhắn cùng một lúc.
  - *Chi phí thấp (Low Overhead)*: Loại bỏ phần tiêu đề HTTP request/response cồng kềnh (có thể lên tới vài KB) cho mỗi tin nhắn, thay thế bằng frame header nhỏ gọn (thường từ 2-10 bytes).
  - *Thời gian thực (Real-time)*: Độ trễ cực thấp, lý tưởng cho các ứng dụng tương tác trực tiếp.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-196', 'WebSocket', 'WebSocket', 'Mid', 'What is the difference between HTTP and WebSocket?', 'Sự khác biệt giữa HTTP và WebSocket là gì?', 'Here is a comparison between HTTP (specifically HTTP/1.1) and WebSocket protocols:

1. **Communication Model**: HTTP is unidirectional (client initiates request, server responds), whereas WebSocket is bidirectional (both client and server can push messages at any time).
2. **Connection Lifecycle**: HTTP connections are short-lived or request-based (even with Keep-Alive, it operates under request-response paradigm), while WebSocket establishes a single, persistent, stateful TCP connection.
3. **Overhead**: HTTP requires sending headers (cookies, user-agents, etc.) with every request. WebSocket headers are sent only during the initial handshake; subsequent messages carry minimal framing overhead (around 2 to 10 bytes).
4. **Use Case**: HTTP is ideal for static web pages, REST APIs, and file downloads. WebSocket is suitable for real-time applications like chat apps, collaborative editors, and live financial tickers.', 'Dưới đây là so sánh giữa giao thức HTTP (cụ thể là HTTP/1.1) và WebSocket:

1. **Mô hình giao tiếp**: HTTP là một chiều (client gửi yêu cầu, server phản hồi), trong khi WebSocket là hai chiều (cả client và server đều có thể tự động gửi tin nhắn bất cứ lúc nào).
2. **Vòng đời kết nối**: Kết nối HTTP có vòng đời ngắn hoặc theo cơ chế yêu cầu-phản hồi (ngay cả với Keep-Alive), trong khi WebSocket thiết lập một kết nối TCP duy nhất, liên tục và lưu trạng thái (stateful).
3. **Chi phí truyền tải (Overhead)**: HTTP yêu cầu gửi tiêu đề (cookies, user-agent,...) kèm theo mọi request. WebSocket chỉ gửi header ở bước bắt tay ban đầu; các tin nhắn sau đó chỉ tốn chi phí frame rất nhỏ (khoảng 2 đến 10 bytes).
4. **Trường hợp sử dụng**: HTTP lý tưởng cho các trang web tĩnh, REST API và tải file. WebSocket phù hợp cho các ứng dụng thời gian thực như ứng dụng chat, trình chỉnh sửa tài liệu chung và bảng giá tài chính trực tuyến.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-197', 'WebSocket', 'WebSocket', 'Mid', 'When should WebSocket be used?', 'Khi nào nên sử dụng WebSocket?', 'WebSocket should be used when an application requires high-frequency, low-latency, bidirectional, and real-time data exchange. Key scenarios include:

1. **Chat & Instant Messaging**: Real-time delivery of messages and typing indicators without polling.
2. **Collaborative Tools**: Multi-user applications like Google Docs, Whiteboards, where edits by one user must immediately reflect on other users'' screens.
3. **Live Feeds & Dashboards**: High-frequency financial tickers, live sports scores, IoT telemetry, and system monitoring.
4. **Multiplayer Gaming**: Fast-paced online games requiring constant state updates between client and server.

*Note*: For one-way server-to-client streaming, **Server-Sent Events (SSE)** is often a simpler alternative.', 'WebSocket nên được sử dụng khi ứng dụng yêu cầu trao đổi dữ liệu tần suất cao, độ trễ thấp, hai chiều và thời gian thực. Các kịch bản chính bao gồm:

1. **Ứng dụng Chat & Tin nhắn tức thời**: Truyền tin nhắn trực tiếp và hiển thị trạng thái đang nhập (typing) thời gian thực mà không cần polling.
2. **Công cụ cộng tác chung**: Các ứng dụng nhiều người dùng như Google Docs, bảng vẽ trực tuyến (Whiteboard), nơi chỉnh sửa của một người phải lập tức hiển thị trên màn hình người khác.
3. **Bảng tin & Dashboard trực tiếp**: Bảng giá tài chính cập nhật liên tục, tỷ số thể thao trực tiếp, dữ liệu cảm biến IoT và giám sát hệ thống.
4. **Game trực tuyến nhiều người chơi**: Các trò chơi yêu cầu cập nhật trạng thái liên tục, nhanh chóng giữa client và server.

*Lưu ý*: Đối với truyền luồng một chiều từ server tới client (one-way), **Server-Sent Events (SSE)** thường là giải pháp thay thế đơn giản hơn.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-198', 'WebSocket', 'WebSocket', 'Mid', 'What is STOMP?', 'STOMP là gì?', '**STOMP** (Simple Text Oriented Messaging Protocol) is a lightweight, frame-based sub-protocol commonly used over WebSocket to provide structured message routing.

- **Why it is needed**: Raw WebSockets only define a transport layer for sending binary or text messages, but don''t specify *how* to route messages to specific destinations. STOMP defines a programming model for this.
- **Frame Format**: Similar to HTTP, STOMP frames consist of a command (e.g., `CONNECT`, `SEND`, `SUBSCRIBE`, `MESSAGE`), headers (metadata), and a body.
  ```
  SEND
  destination:/queue/trade
  content-type:application/json

  {"ticker":"AAPL", "price":150.0}
  ^@
  ```
- **Spring Integration**: Spring provides out-of-the-box support for STOMP, allowing developers to route messages using `@MessageMapping` and `@SendTo` annotations:
  ```java
  @MessageMapping("/chat")
  @SendTo("/topic/messages")
  public ChatMessage send(ChatMessage message) {
      return message;
  }
  ```', '**STOMP** (Simple Text Oriented Messaging Protocol) là một giao thức phụ (sub-protocol) dạng khung (frame-based) gọn nhẹ, thường được sử dụng trên nền WebSocket để cung cấp cơ chế định tuyến tin nhắn có cấu trúc.

- **Tại sao cần thiết**: WebSocket thuần túy chỉ định nghĩa lớp truyền tải (transport layer) để gửi tin nhắn văn bản hoặc nhị phân, nhưng không quy định *cách* định tuyến tin nhắn đến các điểm cụ thể. STOMP cung cấp mô hình lập trình để giải quyết vấn đề này.
- **Định dạng Khung (Frame)**: Tương tự như HTTP, khung STOMP gồm một lệnh (ví dụ: `CONNECT`, `SEND`, `SUBSCRIBE`, `MESSAGE`), các header (metadata) và body.
  ```
  SEND
  destination:/queue/trade
  content-type:application/json

  {"ticker":"AAPL", "price":150.0}
  ^@
  ```
- **Tích hợp Spring**: Spring hỗ trợ sẵn STOMP, cho phép lập trình viên định tuyến tin nhắn dễ dàng bằng các annotation `@MessageMapping` và `@SendTo`:
  ```java
  @MessageMapping("/chat")
  @SendTo("/topic/messages")
  public ChatMessage send(ChatMessage message) {
      return message;
  }
  ```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-199', 'WebSocket', 'WebSocket', 'Mid', 'Why is STOMP commonly used with Spring WebSocket?', 'Tại sao STOMP thường được sử dụng cùng với Spring WebSocket?', 'STOMP (Simple Text Oriented Messaging Protocol) is a sub-protocol that runs on top of WebSockets. Raw WebSockets only define how bytes or text are transmitted, but do not specify *how* to route messages or what format they should take. STOMP introduces frames (such as `CONNECT`, `SEND`, `SUBSCRIBE`, `MESSAGE`) that resemble HTTP headers and body formats. Spring supports STOMP out-of-the-box, providing several key benefits:

* **Message Routing**: Enables mapping incoming messages to specific controller methods using `@MessageMapping` and `@SubscribeMapping` annotations.
* **Built-in Message Broker**: Includes a simple in-memory broker, and allows connecting to external brokers (e.g., RabbitMQ, ActiveMQ) via a STOMP broker relay.
* **Integration with Spring Security**: Allows securing message destinations using Spring Security''s authorization rules.
* **Standardized Metadata**: Provides frame headers to easily pass metadata such as authentication tokens, content-type, or transaction IDs.', 'STOMP (Simple Text Oriented Messaging Protocol) là một giao thức phụ (sub-protocol) chạy trên nền tảng WebSockets. WebSockets thô chỉ định nghĩa cách truyền tải các byte hoặc văn bản thô mà không quy định *cách* định tuyến tin nhắn hoặc cấu trúc của chúng. STOMP giới thiệu các frame (như `CONNECT`, `SEND`, `SUBSCRIBE`, `MESSAGE`) tương tự như cấu trúc header và body của HTTP. Spring hỗ trợ STOMP sẵn có, mang lại một số lợi ích chính:

* **Định tuyến tin nhắn**: Cho phép ánh xạ các tin nhắn đến vào các phương thức controller cụ thể bằng cách sử dụng các annotation `@MessageMapping` và `@SubscribeMapping`.
* **Môi giới tin nhắn tích hợp (Message Broker)**: Bao gồm một simple broker chạy trong bộ nhớ và cho phép kết nối đến các message broker bên ngoài (như RabbitMQ, ActiveMQ) qua STOMP broker relay.
* **Tích hợp với Spring Security**: Cho phép bảo mật các điểm đến (destinations) của tin nhắn bằng các quy tắc phân quyền của Spring Security.
* **Metadata chuẩn hóa**: Cung cấp các frame header để dễ dàng truyền metadata như token xác thực, content-type hoặc transaction ID.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-200', 'WebSocket', 'WebSocket', 'Mid', 'What is the difference between a topic and a queue in STOMP?', 'Sự khác biệt giữa topic và queue trong STOMP là gì?', 'In STOMP message routing within Spring, **topics** and **queues** represent different messaging paradigms:

* **Topic (One-to-Many / Pub-Sub)**:
  * Typically uses the `/topic/` prefix.
  * Represents a Publish-Subscribe model where messages sent to a topic are broadcast to **all** active subscribers of that topic.
  * Ideal for broadcasting real-time updates (e.g., live stock prices, public chatrooms).
* **Queue (One-to-One / Point-to-Point)**:
  * Typically uses the `/queue/` prefix (or `/user/queue/` for user-specific routing).
  * Represents a point-to-point model where messages are destined for a **single** subscriber or user.
  * Ideal for private messages, user-specific notifications, or job tasks where only one receiver should process the message.', 'Trong việc định tuyến tin nhắn STOMP của Spring, **topic** và **queue** đại diện cho hai mô hình truyền thông khác nhau:

* **Topic (Một-đến-Nhiều / Pub-Sub)**:
  * Thường sử dụng tiền tố `/topic/`.
  * Đại diện cho mô hình Publish-Subscribe, trong đó các tin nhắn gửi đến một topic sẽ được phát rộng (broadcast) tới **tất cả** các client đang đăng ký (subscribe) topic đó.
  * Phù hợp để cập nhật thông tin thời gian thực (ví dụ: giá cổ phiếu trực tiếp, phòng chat công cộng).
* **Queue (Một-đến-Một / Point-to-Point)**:
  * Thường sử dụng tiền tố `/queue/` (hoặc `/user/queue/` để định tuyến riêng cho từng user).
  * Đại diện cho mô hình điểm-đến-điểm, nơi các tin nhắn được gửi đến **duy nhất một** subscriber hoặc user cụ thể.
  * Phù hợp cho tin nhắn riêng tư, thông báo cá nhân, hoặc các tác vụ công việc chỉ cần một bên nhận xử lý.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-201', 'WebSocket', 'WebSocket', 'Junior', 'What is the purpose of @MessageMapping?', 'Mục đích của @MessageMapping là gì?', '`@MessageMapping` is a Spring annotation used to map incoming WebSocket/STOMP messages to specific controller handler methods. It works similarly to `@RequestMapping` or `@PostMapping` in Spring MVC, but operates on STOMP message destinations instead of HTTP paths.

* **Destination Mapping**: When a client sends a STOMP message to a destination matching the `@MessageMapping` path (e.g., `/app/chat`), the corresponding method is invoked.
* **Payload Serialization**: Spring automatically deserializes the incoming message payload into the method''s parameters (e.g., converting a JSON payload to a Java POJO).
* **Return Destination (`@SendTo` / `@SendToUser`)**: By default, the return value of a `@MessageMapping` method is serialized and sent to a broadcast destination (often defined via `@SendTo` or `@SendToUser` annotations).', '`@MessageMapping` là một annotation trong Spring dùng để ánh xạ các tin nhắn WebSocket/STOMP gửi đến vào các phương thức xử lý (handler) cụ thể trong controller. Nó hoạt động tương tự như `@RequestMapping` hoặc `@PostMapping` trong Spring MVC, nhưng chạy trên các điểm đến (destination) của tin nhắn STOMP thay vì các đường dẫn HTTP.

* **Ánh xạ điểm đến**: Khi client gửi tin nhắn STOMP đến một destination khớp với đường dẫn `@MessageMapping` (ví dụ: `/app/chat`), phương thức tương ứng sẽ được gọi.
* **Tuần tự hóa payload**: Spring tự động giải tuần tự hóa payload của tin nhắn gửi đến thành các tham số của phương thức (ví dụ: chuyển đổi payload JSON thành một Java POJO).
* **Destination trả về (`@SendTo` / `@SendToUser`)**: Theo mặc định, giá trị trả về của phương thức `@MessageMapping` sẽ được tuần tự hóa và gửi tới một destination phát rộng (thường được định nghĩa qua annotation `@SendTo` hoặc `@SendToUser`).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-202', 'WebSocket', 'WebSocket', 'Senior', 'How can WebSocket endpoints be secured?', 'Làm thế nào để bảo mật các WebSocket endpoint?', 'Securing WebSocket endpoints requires a multi-layered approach in Spring Boot:

1. **Transport Layer Security (WSS)**:
   * Always use `wss://` (Websocket Secure) over TLS to encrypt communication, preventing eavesdropping and Man-In-The-Middle (MITM) attacks.
2. **Handshake Authentication (HTTP upgrade)**:
   * Authentication is typically done during the initial HTTP upgrade request using Cookies, HTTP Session attributes, or standard HTTP Authorization headers. Once authenticated, the user principal is bound to the WebSocket session.
3. **STOMP Connection Interceptors (Token-based Auth)**:
   * For single-page applications using JWTs, tokens are often passed in the headers of the STOMP `CONNECT` frame because standard WebSocket browser APIs do not support custom HTTP headers during connection.
   * A custom `ChannelInterceptor` intercepts the `CONNECT` frame, extracts the token, validates it, and injects the `Authentication` object into the frame headers:
     ```java
     @Override
     public Message<?> preSend(Message<?> message, MessageChannel channel) {
         StompHeaderAccessor accessor = MessageHeaderAccessor.getAccessor(message, StompHeaderAccessor.class);
         if (StompCommand.CONNECT.equals(accessor.getCommand())) {
             String token = accessor.getFirstNativeHeader("Authorization");
             // Validate token and set User principal
             accessor.setUser(authentication);
         }
         return message;
     }
     ```
4. **Destination Authorization**:
   * Enable message authorization using Spring Security configuration by extending `AbstractSecurityWebSocketMessageBrokerConfigurer` or using `@EnableWebSocketMessageBroker` with custom security filters to restrict subscription and publication to specific destinations:
     ```java
     @Override
     public void configureInbound(MessageSecurityMetadataSourceRegistry messages) {
         messages
             .simpDestMatchers("/topic/admin/**").hasRole("ADMIN")
             .simpSubscribeDestMatchers("/topic/**").authenticated()
             .anyMessage().denyAll();
     }
     ```
5. **CSRF Protection**:
   * Spring Security enforces CSRF tokens on WebSocket connections by default. Cross-Origin connections must also be restricted using `allowedOrigins` or `allowedOriginPatterns` to prevent Cross-Site WebSocket Hijacking (CSWSH).', 'Bảo mật các endpoint WebSocket đòi hỏi cách tiếp cận đa lớp trong Spring Boot:

1. **Bảo mật tầng truyền tải (WSS)**:
   * Luôn sử dụng `wss://` (Websocket Secure) chạy trên nền TLS để mã hóa truyền thông, ngăn chặn nghe lén và các cuộc tấn công Xen giữa (MITM).
2. **Xác thực lúc bắt tay (HTTP Handshake Upgrade)**:
   * Việc xác thực thường được thực hiện trong yêu cầu nâng cấp HTTP ban đầu bằng cách sử dụng Cookie, thuộc tính HTTP Session hoặc HTTP Authorization header tiêu chuẩn. Sau khi được xác thực, thực thể người dùng (user principal) sẽ được liên kết với WebSocket session.
3. **Sử dụng STOMP Connection Interceptor (Xác thực bằng Token)**:
   * Đối với ứng dụng Single Page App sử dụng JWT, token thường được truyền trong các header của frame `CONNECT` trong STOMP vì API WebSocket của trình duyệt không hỗ trợ custom HTTP header khi khởi tạo kết nối.
   * Viết một `ChannelInterceptor` tùy chỉnh để chặn frame `CONNECT`, trích xuất token, xác thực và đưa đối tượng `Authentication` vào header của frame:
     ```java
     @Override
     public Message<?> preSend(Message<?> message, MessageChannel channel) {
         StompHeaderAccessor accessor = MessageHeaderAccessor.getAccessor(message, StompHeaderAccessor.class);
         if (StompCommand.CONNECT.equals(accessor.getCommand())) {
             String token = accessor.getFirstNativeHeader("Authorization");
             // Xác thực token và gán User principal
             accessor.setUser(authentication);
         }
         return message;
     }
     ```
4. **Phân quyền đích đến (Destination Authorization)**:
   * Kích hoạt phân quyền tin nhắn thông qua cấu hình Spring Security bằng cách kế thừa `AbstractSecurityWebSocketMessageBrokerConfigurer` hoặc sử dụng cấu hình bảo mật tùy chỉnh để giới hạn quyền đăng ký (subscribe) hoặc xuất bản (publish) vào các destination cụ thể:
     ```java
     @Override
     public void configureInbound(MessageSecurityMetadataSourceRegistry messages) {
         messages
             .simpDestMatchers("/topic/admin/**").hasRole("ADMIN")
             .simpSubscribeDestMatchers("/topic/**").authenticated()
             .anyMessage().denyAll();
     }
     ```
5. **Phòng chống tấn công CSRF**:
   * Spring Security mặc định áp đặt token CSRF lên kết nối WebSocket. Các kết nối chéo nguồn (Cross-Origin) cũng phải được giới hạn bằng `allowedOrigins` hoặc `allowedOriginPatterns` để ngăn chặn tấn công Cross-Site WebSocket Hijacking (CSWSH).', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-203', 'gRPC', 'gRPC', 'Junior', 'What is gRPC?', 'gRPC là gì?', 'gRPC (gRPC Remote Procedure Calls) is a high-performance, open-source, universal RPC framework developed by Google.

* **How it works**: It enables a client application to directly call a method on a server application on a different machine as if it were a local object, making it easier to build distributed applications and services.
* **HTTP/2 Transport**: It uses HTTP/2 for transport, which supports features like multiplexing, bidirectional streaming, header compression, and flow control.
* **Protocol Buffers**: By default, it uses Protocol Buffers (Protobuf) as its Interface Definition Language (IDL) to define the service contract and serialize structured data into a compact binary format.
* **Language Agnostic**: gRPC supports automatic code generation for a wide range of programming languages (Java, C++, Python, Go, Node.js, etc.), facilitating seamless microservices communication.', 'gRPC (gRPC Remote Procedure Calls) là một framework RPC (Remote Procedure Call) mã nguồn mở, hiệu năng cao, đa nền tảng được phát triển bởi Google.

* **Cách hoạt động**: Nó cho phép ứng dụng client gọi trực tiếp một phương thức trên ứng dụng server chạy ở một máy khác như thể đó là một đối tượng local, giúp xây dựng các hệ thống và dịch vụ phân tán dễ dàng hơn.
* **Truyền tải qua HTTP/2**: Nó sử dụng HTTP/2 để truyền tải, hỗ trợ các tính năng như ghép kênh (multiplexing), truyền phát hai chiều (bidirectional streaming), nén header và kiểm soát lưu lượng.
* **Protocol Buffers**: Mặc định, nó sử dụng Protocol Buffers (Protobuf) làm Ngôn ngữ định nghĩa giao diện (IDL) để mô tả hợp đồng dịch vụ và tuần tự hóa dữ liệu có cấu trúc thành định dạng nhị phân nhỏ gọn.
* **Độc lập ngôn ngữ**: gRPC hỗ trợ tự động sinh mã nguồn cho nhiều ngôn ngữ lập trình khác nhau (Java, C++, Python, Go, Node.js, v.v.), giúp kết nối các microservices viết bằng các ngôn ngữ khác nhau một cách liền mạch.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-204', 'gRPC', 'gRPC', 'Mid', 'How is gRPC different from REST?', 'gRPC khác với REST như thế nào?', 'gRPC and REST are two different architectural styles for APIs, differing across several dimensions:

| Feature | gRPC | REST |
| :--- | :--- | :--- |
| **Protocol** | HTTP/2 (strictly required for multiplexing, streaming, etc.) | HTTP/1.1 or HTTP/2 |
| **Payload Format** | Protocol Buffers (Binary, compact, extremely fast) | JSON/XML (Text-based, larger size, slower serialization) |
| **API Paradigm** | Remote Procedure Call (RPC) — focus on actions/verbs | Representational State Transfer (REST) — focus on resources/nouns |
| **Contract** | Strict, code-generation first (`.proto` file is mandatory) | Loose, contract (OpenAPI/Swagger) is optional |
| **Streaming** | Native support for Unary, Server/Client/Bidirectional streaming | Limited (usually requires WebSockets or SSE for real-time) |
| **Browser Support** | Requires gRPC-Web bridge (cannot call gRPC natively from browser JS) | Native support in all modern browsers |
| **Code Generation** | Out-of-the-box code gen via the `protoc` compiler | Requires third-party tools (OpenAPI Generator, etc.) |', 'gRPC và REST là hai phong cách kiến trúc API khác nhau, có sự khác biệt lớn trên nhiều phương diện:

| Đặc tính | gRPC | REST |
| :--- | :--- | :--- |
| **Giao thức** | HTTP/2 (bắt buộc để ghép kênh, truyền phát, v.v.) | HTTP/1.1 hoặc HTTP/2 |
| **Định dạng Payload** | Protocol Buffers (Nhị phân, gọn nhẹ, cực nhanh) | JSON/XML (Dạng văn bản, dung lượng lớn, tuần tự hóa chậm) |
| **Mô hình API** | Remote Procedure Call (RPC) — tập trung vào hành động/động từ | Representational State Transfer (REST) — tập trung vào tài nguyên/danh từ |
| **Hợp đồng (Contract)** | Chặt chẽ, sinh code trước (bắt buộc phải có file `.proto`) | Lỏng lẻo, tài liệu hợp đồng (OpenAPI/Swagger) là tùy chọn |
| **Truyền phát (Streaming)** | Hỗ trợ mặc định Unary, Server/Client/Bidirectional streaming | Hạn chế (thường cần WebSockets hoặc SSE để làm việc thời gian thực) |
| **Hỗ trợ trình duyệt** | Cần cầu nối gRPC-Web (không thể gọi gRPC trực tiếp từ JS trình duyệt) | Được hỗ trợ trực tiếp trên mọi trình duyệt hiện đại |
| **Tự động sinh code** | Hỗ trợ sẵn thông qua trình biên dịch `protoc` | Cần các công cụ bên thứ ba (OpenAPI Generator, v.v.) |', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-205', 'gRPC', 'gRPC', 'Junior', 'What is Protocol Buffers?', 'Protocol Buffers là gì?', 'Protocol Buffers (Protobuf) is Google''s language-neutral, platform-neutral, extensible mechanism for serializing structured data. It acts as both the interface definition language (IDL) and the serialization format in gRPC.

* **IDL**: Developers write a `.proto` file to define data structures (messages) and service methods.
* **Binary Serialization**: Unlike JSON/XML which are human-readable text formats, Protobuf serializes data into a dense, compressed binary format, making it much smaller and faster to transmit and parse.
* **Code Generation**: The `protoc` compiler reads the `.proto` file and generates strongly-typed helper classes in languages like Java, C#, Go, and Python to handle serialization/deserialization.', 'Protocol Buffers (Protobuf) là cơ chế của Google độc lập với ngôn ngữ và nền tảng, có khả năng mở rộng để tuần tự hóa dữ liệu có cấu trúc. Nó đóng vai trò vừa là ngôn ngữ định nghĩa giao diện (IDL) vừa là định dạng tuần tự hóa dữ liệu trong gRPC.

* **IDL**: Nhà phát triển viết file `.proto` để định nghĩa cấu trúc dữ liệu (message) và các phương thức dịch vụ (service).
* **Tuần tự hóa nhị phân**: Không giống như JSON/XML là các định dạng văn bản mà con người có thể đọc được, Protobuf tuần tự hóa dữ liệu thành định dạng nhị phân nén dày đặc, giúp nó có kích thước nhỏ hơn và tốc độ truyền tải cũng như phân tích cú pháp nhanh hơn rất nhiều.
* **Sinh mã nguồn (Code Generation)**: Trình biên dịch `protoc` đọc file `.proto` và tạo ra các helper class có kiểu dữ liệu mạnh mẽ trong các ngôn ngữ như Java, C#, Go và Python để thực hiện việc tuần tự hóa/giải tuần tự hóa.', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-206', 'gRPC', 'gRPC', 'Junior', 'What is defined in a .proto file?', 'Những gì được định nghĩa trong một file .proto?', 'A `.proto` file is a plain-text schema definition file that outlines the structure of the API. It typically contains the following declarations:

1. **Syntax Version**: Specifies the version of protobuf syntax, e.g., `syntax = "proto3";`.
2. **Package**: Declares a namespace to avoid naming collisions across different proto projects, e.g., `package api.user;`.
3. **Option Configuration**: Provides compiler-specific settings, such as Java package destinations or class naming settings:
   ```protobuf
   option java_multiple_files = true;
   option java_package = "com.example.grpc";
   ```
4. **Message Definitions**: Specifies data models, defining field names, data types, and unique field tags (numeric tags used to identify fields in binary form):
   ```protobuf
   message UserRequest {
     int32 user_id = 1;
     string client_version = 2;
   }
   ```
5. **Service Definitions**: Defines the RPC service interface and the methods that can be remotely invoked, including request and response types:
   ```protobuf
   service UserService {
     rpc GetUserProfile (UserRequest) returns (UserResponse);
   }
   ```', 'Một file `.proto` là một file văn bản thô dùng để định nghĩa schema, phác thảo cấu trúc của API. Nó thường chứa các khai báo sau:

1. **Phiên bản cú pháp**: Chỉ định phiên bản cú pháp protobuf được sử dụng, ví dụ: `syntax = "proto3";`.
2. **Package**: Khai báo không gian tên (namespace) để tránh xung đột tên giữa các dự án proto khác nhau, ví dụ: `package api.user;`.
3. **Cấu hình Option**: Cung cấp các thiết lập dành cho trình biên dịch, ví dụ như package đích của Java hoặc cách đặt tên class:
   ```protobuf
   option java_multiple_files = true;
   option java_package = "com.example.grpc";
   ```
4. **Định nghĩa Message**: Chỉ định các mô hình dữ liệu bằng cách định nghĩa tên trường, kiểu dữ liệu và số thẻ trường (field tag) duy nhất (các thẻ số dùng để định danh trường trong định dạng nhị phân):
   ```protobuf
   message UserRequest {
     int32 user_id = 1;
     string client_version = 2;
   }
   ```
5. **Định nghĩa Service**: Định nghĩa interface dịch vụ RPC và các phương thức có thể được gọi từ xa, bao gồm kiểu request và response:
   ```protobuf
   service UserService {
     rpc GetUserProfile (UserRequest) returns (UserResponse);
   }
   ```', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-207', 'gRPC', 'gRPC', 'Mid', 'What are unary, server-streaming, client-streaming, and bidirectional-streaming RPCs?', 'Unary, server-streaming, client-streaming, và bidirectional-streaming RPC là gì?', 'gRPC supports four distinct communication paradigms, defined in the `.proto` file by using the `stream` keyword:

1. **Unary RPC (Request-Response)**:
   * The client sends a single request message and receives a single response message from the server.
   * *Definition*: `rpc SayHello(HelloRequest) returns (HelloResponse);`
2. **Server-Streaming RPC**:
   * The client sends a single request message, and the server returns a stream of multiple response messages. The client reads messages from the stream until there are no more.
   * *Definition*: `rpc ListFeatures(Rectangle) returns (stream Feature);`
3. **Client-Streaming RPC**:
   * The client sends a stream of multiple request messages, and the server returns a single response message after receiving all client requests.
   * *Definition*: `rpc RecordRoute(stream Point) returns (RouteSummary);`
4. **Bidirectional-Streaming RPC**:
   * Both the client and server send a sequence of messages using separate, independent read-write streams. The two streams operate asynchronously, allowing the server to respond immediately, wait for all requests, or stream back replies in any order.
   * *Definition*: `rpc RouteChat(stream RouteNote) returns (stream RouteNote);`', 'gRPC hỗ trợ bốn mô hình giao tiếp khác nhau, được định nghĩa trong file `.proto` bằng cách sử dụng từ khóa `stream`:

1. **Unary RPC (Yêu cầu - Phản hồi đơn)**:
   * Client gửi một tin nhắn request duy nhất và nhận lại một tin nhắn response duy nhất từ server.
   * *Định nghĩa*: `rpc SayHello(HelloRequest) returns (HelloResponse);`
2. **Server-Streaming RPC (Truyền phát phía Server)**:
   * Client gửi một tin nhắn request duy nhất, và server phản hồi bằng một luồng (stream) chứa nhiều tin nhắn response. Client đọc các tin nhắn từ luồng này cho đến khi kết thúc.
   * *Định nghĩa*: `rpc ListFeatures(Rectangle) returns (stream Feature);`
3. **Client-Streaming RPC (Truyền phát phía Client)**:
   * Client gửi một luồng chứa nhiều tin nhắn request, và server chỉ trả về một tin nhắn response duy nhất sau khi đã nhận hết tất cả request của client.
   * *Định nghĩa*: `rpc RecordRoute(stream Point) returns (RouteSummary);`
4. **Bidirectional-Streaming RPC (Truyền phát hai chiều)**:
   * Cả client và server cùng gửi chuỗi các tin nhắn bằng các luồng đọc-ghi độc lập. Hai luồng hoạt động bất đồng bộ, cho phép server phản hồi ngay lập tức, đợi tất cả request hoặc truyền phát phản hồi theo bất kỳ thứ tự nào.
   * *Định nghĩa*: `rpc RouteChat(stream RouteNote) returns (stream RouteNote);`', 1);
INSERT OR IGNORE INTO questions (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed) VALUES ('q-208', 'gRPC', 'gRPC', 'Mid', 'When is gRPC a better choice than REST?', 'Khi nào gRPC là lựa chọn tốt hơn REST?', 'gRPC is preferred over REST in scenarios that prioritize performance, low latency, and efficient utilization of network resources:

1. **Internal Microservice-to-Microservice Communication**:
   * In distributed microservices architectures, the high performance of HTTP/2 multiplexing and the compact binary payload of Protobuf greatly reduce latency and CPU/network overhead compared to JSON over HTTP/1.1.
2. **Polyglot Systems**:
   * For architectures written in multiple programming languages, gRPC''s code generator creates consistent, strongly-typed client stubs, eliminating the need to write custom client SDKs.
3. **Low-Bandwidth / Resource-Constrained Environments**:
   * For mobile apps or IoT devices, Protobuf''s compact payloads reduce bandwidth consumption, speed up parsing, and lower battery consumption compared to heavy text-based JSON.
4. **Real-Time Bidirectional Streaming**:
   * Applications requiring continuous, multi-directional data flows (e.g., chat applications, financial price feeds, real-time dashboard updates) benefit from gRPC''s native support for HTTP/2 streams over a single connection.', 'gRPC được ưu tiên lựa chọn hơn REST trong các kịch bản coi trọng hiệu năng cao, độ trễ thấp và tối ưu hóa tài nguyên mạng:

1. **Giao tiếp nội bộ giữa các Microservices**:
   * Trong kiến trúc microservices phân tán, khả năng ghép kênh (multiplexing) của HTTP/2 và payload nhị phân nhỏ gọn của Protobuf giúp giảm thiểu đáng kể độ trễ cũng như hao phí CPU và băng thông mạng so với việc truyền tải JSON qua HTTP/1.1.
2. **Hệ thống đa ngôn ngữ (Polyglot Systems)**:
   * Đối với kiến trúc được phát triển bằng nhiều ngôn ngữ lập trình khác nhau, trình sinh code của gRPC tạo ra các client stub có kiểu dữ liệu mạnh mẽ, nhất quán, loại bỏ nhu cầu tự viết SDK client.
3. **Môi trường băng thông thấp / Hạn chế tài nguyên**:
   * Đối với các ứng dụng di động hoặc thiết bị IoT, payload nhị phân nhỏ gọn của Protobuf giúp giảm mức tiêu thụ băng thông, phân tích cú pháp nhanh hơn và tiết kiệm pin so với định dạng JSON cồng kềnh.
4. **Truyền phát thời gian thực hai chiều (Bidirectional Streaming)**:
   * Các ứng dụng yêu cầu luồng dữ liệu liên tục theo nhiều hướng (ví dụ: ứng dụng chat, bảng giá tài chính trực tiếp, cập nhật dashboard thời gian thực) được hưởng lợi rất nhiều từ khả năng truyền phát mặc định của gRPC trên một kết nối HTTP/2 duy nhất.', 1);

COMMIT;
