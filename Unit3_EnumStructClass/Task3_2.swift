// Task 3.2 - enum Weekday: Int with raw values 1-7.

enum Weekday: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}

// Raw value of a case.
let today = Weekday.wednesday
print("Raw value of \(today): \(today.rawValue)")   // 3

// Create a case from a raw value. The initialiser returns an optional.
if let day = Weekday(rawValue: 6) {
    print("Raw value 6 is \(day)")                  // saturday
}

if let invalid = Weekday(rawValue: 9) {
    print(invalid)
} else {
    print("No weekday has raw value 9")
}
