// Task 3.3 - struct Student with two instances.

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int
}

let student1 = Student(name: "Anu", rollNumber: 101, marks: 88)
let student2 = Student(name: "Ben", rollNumber: 102, marks: 72)

print("Name: \(student1.name), Roll: \(student1.rollNumber), Marks: \(student1.marks)")
print("Name: \(student2.name), Roll: \(student2.rollNumber), Marks: \(student2.marks)")
