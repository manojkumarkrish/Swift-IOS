// Task 3.17 - Mini project: Student Management System.
// struct Student, enum Grade and class School.

enum Grade: String {
    case a = "A", b = "B", c = "C", d = "D", f = "F"

    // Build a grade from marks.
    init(marks: Int) {
        switch marks {
        case 90...: self = .a
        case 80..<90: self = .b
        case 70..<80: self = .c
        case 60..<70: self = .d
        default: self = .f
        }
    }
}

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    var grade: Grade {
        return Grade(marks: marks)
    }
}

class School {
    var name: String
    private(set) var students: [Student] = []

    init(name: String) {
        self.name = name
    }

    func addStudent(_ student: Student) {
        students.append(student)
        print("Added \(student.name)")
    }

    func printReport() {
        print("\n===== \(name) - Report (sorted by marks) =====")
        let sorted = students.sorted { $0.marks > $1.marks }
        for student in sorted {
            print("Roll \(student.rollNumber)  \(student.name)  \(student.marks)  Grade \(student.grade.rawValue)")
        }
        if !students.isEmpty {
            let total = students.reduce(0) { $0 + $1.marks }
            print("Class average: \(Double(total) / Double(students.count))")
        }
    }
}

let school = School(name: "Greenfield School")
school.addStudent(Student(name: "Anu", rollNumber: 1, marks: 92))
school.addStudent(Student(name: "Ben", rollNumber: 2, marks: 74))
school.addStudent(Student(name: "Chitra", rollNumber: 3, marks: 85))
school.addStudent(Student(name: "Dev", rollNumber: 4, marks: 48))
school.addStudent(Student(name: "Esha", rollNumber: 5, marks: 66))
school.printReport()
