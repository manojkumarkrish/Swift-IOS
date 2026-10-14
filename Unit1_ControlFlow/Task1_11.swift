// Task 1.11 - Sum of the digits of a number using a while loop.
// % 10 gives the last digit, / 10 removes it.  1234 -> 10

let original = 1234
var remaining = original
var sum = 0

while remaining > 0 {
    sum += remaining % 10
    remaining /= 10
}

print("Sum of digits of \(original) is \(sum)")
