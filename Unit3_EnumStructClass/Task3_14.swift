// Task 3.14 - Failable initialiser: Student returns nil if marks are outside 0-100.

struct Student {
    var name: String
    var marks: Int

    init?(name: String, marks: Int) {
        guard (0...100).contains(marks) else {
            return nil
        }
        self.name = name
        self.marks = marks
    }
}

let valid = Student(name: "Anu", marks: 88)
let tooHigh = Student(name: "Ben", marks: 120)
let negative = Student(name: "Chitra", marks: -5)

print(valid != nil ? "Created \(valid!.name) with \(valid!.marks)" : "Invalid marks")
print(tooHigh != nil ? "Created Ben" : "Ben not created: marks out of range")
print(negative != nil ? "Created Chitra" : "Chitra not created: marks out of range")
