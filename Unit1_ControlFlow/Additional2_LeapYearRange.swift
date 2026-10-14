// Additional Task 2 (Operators) - Bool expressions, no if statements.

// Leap year: divisible by 4, except centuries, unless divisible by 400.
func isLeap(_ year: Int) -> Bool {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
}

for year in [1900, 2000, 2024, 2026] {
    print("\(year) leap year? \(isLeap(year))")   // false, true, true, false
}

// Between 1 and 100 inclusive, using the closed range operator.
let value = 57
print("\(value) between 1 and 100? \((1...100).contains(value))")
print("Using pattern match: \(1...100 ~= value)")

// Even and not a multiple of 10.
let n = 24
print("\(n) even and not a multiple of 10? \(n % 2 == 0 && n % 10 != 0)")

// Nil-coalescing operator: print the nickname or "Guest".
let nickname: String? = nil
print(nickname ?? "Guest")
