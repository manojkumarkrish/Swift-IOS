// Task 3.7 - class Car with accelerate() and brake().

class Car {
    var brand: String
    var speed: Int = 0

    init(brand: String) {
        self.brand = brand
    }

    func accelerate() {
        speed += 10
        print("\(brand) accelerates to \(speed) km/h")
    }

    func brake() {
        // Speed must never go below zero.
        speed = max(0, speed - 10)
        print("\(brand) slows down to \(speed) km/h")
    }
}

let car = Car(brand: "Toyota")
car.accelerate()
car.accelerate()
car.accelerate()
car.brake()
car.brake()
car.brake()
car.brake()   // already stopped, stays at 0
