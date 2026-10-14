// Task 3.12 - Inheritance: Vehicle with Car and Bike subclasses that override description().

class Vehicle {
    var name: String

    init(name: String) {
        self.name = name
    }

    func description() -> String {
        return "\(name) is a vehicle"
    }
}

class Car: Vehicle {
    var doors: Int

    init(name: String, doors: Int) {
        self.doors = doors
        super.init(name: name)
    }

    override func description() -> String {
        return "\(name) is a car with \(doors) doors"
    }
}

class Bike: Vehicle {
    var hasGears: Bool

    init(name: String, hasGears: Bool) {
        self.hasGears = hasGears
        super.init(name: name)
    }

    override func description() -> String {
        return "\(name) is a bike \(hasGears ? "with" : "without") gears"
    }
}

// An array of the base type can hold subclasses; the right override runs (polymorphism).
let vehicles: [Vehicle] = [
    Vehicle(name: "Generic"),
    Car(name: "Honda City", doors: 4),
    Bike(name: "Hero Splendor", hasGears: true)
]

for vehicle in vehicles {
    print(vehicle.description())
}
