// Task 1.9 - Largest of three numbers using nested if.

let a = 12
let b = 45
let c = 30

if a >= b {
    if a >= c {
        print("Largest is \(a)")
    } else {
        print("Largest is \(c)")
    }
} else {
    if b >= c {
        print("Largest is \(b)")
    } else {
        print("Largest is \(c)")
    }
}
