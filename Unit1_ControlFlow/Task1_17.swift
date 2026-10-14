// Task 1.17 - Palindrome and Armstrong number checks.

// Palindrome: the number reads the same forwards and backwards (121).
func isPalindrome(_ n: Int) -> Bool {
    var remaining = n
    var reversed = 0
    while remaining > 0 {
        reversed = reversed * 10 + remaining % 10
        remaining /= 10
    }
    return reversed == n
}

// Armstrong: sum of each digit raised to the number of digits equals the number (153).
func isArmstrong(_ n: Int) -> Bool {
    let digitCount = String(n).count
    var remaining = n
    var sum = 0
    while remaining > 0 {
        let digit = remaining % 10
        var power = 1
        for _ in 0..<digitCount { power *= digit }
        sum += power
        remaining /= 10
    }
    return sum == n
}

for n in [121, 123, 153, 370, 154] {
    print("\(n): palindrome = \(isPalindrome(n)), Armstrong = \(isArmstrong(n))")
}
