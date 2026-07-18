/**
 * defaultQuestions.js
 * Mock/baseline fallback question pool. Used for offline development/mock testing.
 * When the backend is running, the app fetches all questions from the database instead.
 */

window.DEFAULT_QUESTIONS = [
  {
    "id": "q-1",
    "category": {
      "en": "Java",
      "vi": "Java"
    },
    "difficulty": "Junior",
    "question": {
      "en": "What are the main principles of object-oriented programming in Java?",
      "vi": "Các nguyên lý chính của lập trình hướng đối tượng (OOP) trong Java là gì?"
    },
    "answer": {
      "en": "Object-Oriented Programming (OOP) in Java is centered around four foundational concepts:\n\n1. **Encapsulation (Đóng gói)**: Wrapping data and methods acting on it inside a class, using `private` access modifiers and public getters/setters.\n2. **Inheritance (Kế thừa)**: Reusing and extending classes using `extends` or `implements` keywords.\n3. **Polymorphism (Đa hình)**: Method Overloading (compile-time) and Method Overriding (runtime).\n4. **Abstraction (Trừu tượng)**: Hiding implementation details using interfaces and abstract classes.",
      "vi": "Lập trình hướng đối tượng (OOP) trong Java xoay quanh 4 nguyên lý cốt lõi:\n\n1. **Tính đóng gói (Encapsulation)**: Che giấu thuộc tính bên trong đối tượng bằng `private` và cung cấp getter/setter.\n2. **Tính kế thừa (Inheritance)**: Tái sử dụng mã nguồn và thiết lập mối quan hệ cha-con qua `extends`/`implements`.\n3. **Tính đa hình (Polymorphism)**: Nạp chồng (compile-time) và Ghi đè phương thức (runtime).\n4. **Tính trừu tượng (Abstraction)**: Ẩn chi tiết triển khai bằng interface và abstract class."
    }
  },
  {
    "id": "q-2",
    "category": {
      "en": "Java",
      "vi": "Java"
    },
    "difficulty": "Junior",
    "question": {
      "en": "What is the difference between a class and an object?",
      "vi": "Sự khác biệt giữa class (lớp) và object (đối tượng) là gì?"
    },
    "answer": {
      "en": "A class is a logical blueprint or template defining static properties and behaviors, stored in Metaspace when loaded. An object is a physical instance of a class that consumes memory space in the Heap when instantiated with the `new` keyword.",
      "vi": "Lớp (Class) là bản thiết kế logic định nghĩa các thuộc tính và hành vi, lưu ở Metaspace khi tải lớp. Đối tượng (Object) là thực thể vật lý cụ thể được tạo ra từ lớp bằng từ khóa `new` và chiếm bộ nhớ trên Heap."
    }
  },
  {
    "id": "q-3",
    "category": {
      "en": "Java",
      "vi": "Java"
    },
    "difficulty": "Mid",
    "question": {
      "en": "What is the difference between abstract classes and interfaces in modern Java?",
      "vi": "Sự khác biệt giữa lớp trừu tượng (abstract class) và giao diện (interface) trong Java hiện đại là gì?"
    },
    "answer": {
      "en": "In modern Java (Java 8+):\n- **Abstract Class**: Can have instance variables, constructors, state, and private/protected methods. Supports single inheritance.\n- **Interface**: Primarily defines behavior contracts. Can contain `default`, `static`, and `private` methods, but cannot have instance variables (only `public static final` constants). Supports multiple inheritance.",
      "vi": "Trong Java hiện đại (Java 8+):\n- **Lớp trừu tượng**: Có thể chứa biến thực thể (instance variables), constructor, trạng thái và phương thức private/protected. Chỉ hỗ trợ đơn kế thừa.\n- **Giao diện**: Chủ yếu định nghĩa đặc tả hành vi. Có thể chứa phương thức `default`, `static` và `private`, nhưng không thể chứa biến thực thể (chỉ có hằng số `public static final`). Hỗ trợ đa kế thừa."
    }
  },
  {
    "id": "spring-core",
    "category": {
      "en": "Spring Core",
      "vi": "Spring Core"
    },
    "difficulty": "Mid",
    "question": {
      "en": "What is Dependency Injection (DI) and Inversion of Control (IoC) in Spring?",
      "vi": "Dependency Injection (DI) và Inversion of Control (IoC) là gì trong Spring Framework?"
    },
    "answer": {
      "en": "IoC is a design principle where the control of object creation and lifecycle is delegated to the Spring IoC container rather than the developer. Dependency Injection is the pattern used to implement IoC, where dependencies are supplied/injected into an object (via constructor, setter, or field injection) at runtime.",
      "vi": "IoC là nguyên lý thiết kế chuyển giao quyền kiểm soát khởi tạo và quản lý vòng đời đối tượng cho Spring IoC Container. Dependency Injection là mẫu triển khai của IoC, trong đó các phụ thuộc được tiêm vào đối tượng (qua constructor, setter, hoặc field injection) khi chương trình chạy."
    }
  },
  {
    "id": "redis-1",
    "category": {
      "en": "Redis",
      "vi": "Redis"
    },
    "difficulty": "Senior",
    "question": {
      "en": "Explain Redis persistence options: RDB vs AOF.",
      "vi": "Giải thích các cơ chế lưu dữ liệu xuống đĩa (persistence) của Redis: RDB so với AOF."
    },
    "answer": {
      "en": "- **RDB (Redis Database)**: Point-in-time snapshots of the dataset at specified intervals. Highly efficient for backups and fast recovery, but risks data loss between snapshots.\n- **AOF (Append Only File)**: Logs every write operation received by the server. Highly durable with minimal data loss, but results in larger files and slower recovery compared to RDB.",
      "vi": "- **RDB (Redis Database)**: Lưu ảnh chụp dữ liệu (snapshots) tại một thời điểm nhất định. Rất tối ưu cho backup và khôi phục nhanh, nhưng có nguy cơ mất dữ liệu giữa các phiên snapshot.\n- **AOF (Append Only File)**: Ghi lại nhật ký mọi thao tác ghi. Độ bền dữ liệu cực cao, hầu như không mất mát dữ liệu, nhưng file log lớn hơn và phục hồi chậm hơn RDB."
    }
  }
];
