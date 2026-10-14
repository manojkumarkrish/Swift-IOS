// Task 3.4 - Student.isPassed() returns true if marks >= 40.

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    func isPassed() -> Bool {
        return marks >= 40
    }
}

let students = [
    Student(name: "Anu", rollNumber: 101, marks: 88),
    Student(name: "Dev", rollNumber: 104, marks: 35)
]

for student in students {
    print("\(student.name) passed? \(student.isPassed())")
}
