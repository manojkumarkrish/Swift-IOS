// Task 3.6 - class Person with an init and introduce().

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("Hi, I'm \(name) and I'm \(age) years old.")
    }
}

let person = Person(name: "Chitra", age: 21)
person.introduce()
