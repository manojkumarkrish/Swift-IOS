// Additional Task 1 (Enum/Struct/Class) - Library item model.

// The task text says "dueIns"; this assumes it means "dueIn" (days until due).
enum BookStatus {
    case available
    case borrowed(by: String, dueIn: Int)
    case reserved(for: String)

    var label: String {
        switch self {
        case .available:
            return "Available"
        case .borrowed(let by, let dueIn):
            return "Borrowed by \(by), due in \(dueIn) days"
        case .reserved(let name):
            return "Reserved for \(name)"
        }
    }
}

struct Book {
    var title: String
    var status: BookStatus = .available
}

class Member {
    var name: String
    var borrowedBooks: [Book] = []

    init(name: String) {
        self.name = name
    }
}

// Struct copy: independent.
let book1 = Book(title: "Swift Basics")
var book2 = book1
book2.status = .borrowed(by: "Anu", dueIn: 14)
print("book1: \(book1.status.label)")   // Available
print("book2: \(book2.status.label)")   // Borrowed by Anu, due in 14 days

// Class sharing: both constants point to the same object.
let member1 = Member(name: "Ravi")
let member2 = member1
member2.name = "Ravi Kumar"
print("member1: \(member1.name)")   // Ravi Kumar
print("member2: \(member2.name)")   // Ravi Kumar
