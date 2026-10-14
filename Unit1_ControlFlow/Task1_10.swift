// Task 1.10 - Leap year check.
// Divisible by 4, except century years, which must be divisible by 400.

func isLeapYear(_ year: Int) -> Bool {
    if year % 400 == 0 {
        return true
    } else if year % 100 == 0 {
        return false
    } else {
        return year % 4 == 0
    }
}

for year in [1900, 2000, 2024, 2026] {
    print("\(year): \(isLeapYear(year) ? "leap year" : "not a leap year")")
}
