// Task 1.14 - Simple calculator using switch.
// Handles division by zero.

func calculate(_ a: Double, _ b: Double, _ op: Character) {
    switch op {
    case "+":
        print("\(a) + \(b) = \(a + b)")
    case "-":
        print("\(a) - \(b) = \(a - b)")
    case "*":
        print("\(a) * \(b) = \(a * b)")
    case "/":
        if b == 0 {
            print("Error: cannot divide by zero")
        } else {
            print("\(a) / \(b) = \(a / b)")
        }
    default:
        print("Unknown operator \(op)")
    }
}

calculate(10, 5, "+")
calculate(10, 5, "-")
calculate(10, 5, "*")
calculate(10, 5, "/")
calculate(10, 0, "/")
calculate(10, 5, "%")
