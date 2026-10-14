// Task 3.13 - class Employee with a didSet observer on salary.

class Employee {
    var name: String

    var salary: Double {
        // willSet/didSet do not run during init, only on later changes.
        didSet {
            print("\(name)'s salary changed from \(oldValue) to \(salary)")
        }
    }

    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
}

let employee = Employee(name: "Ravi", salary: 30000)
employee.salary = 35000
employee.salary = 42000
