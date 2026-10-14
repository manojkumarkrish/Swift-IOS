// Additional Task 3 (Operators) - What does it print?
// The expected output is written beside each line.

print(7 / 2)                       // 3     (integer division drops the fraction)
print(7 % 2)                       // 1
print(-7 % 3)                      // -1    (remainder takes the sign of the dividend)
print(7.0 / 2)                     // 3.5
print(10 - 2 * 3 + 4 / 2)          // 6     (10 - 6 + 2)
print(5 > 3 && 2 > 4 || true)      // true  (&& binds tighter: false || true)
print(1 << 3)                      // 8     (shift left by 3 = multiply by 2^3)
print(6 & 3, 6 | 3, 6 ^ 3)         // 2 7 5 (AND, OR, XOR on 110 and 011)

let x: UInt8 = 255
print(x &+ 1)                      // 0     (overflow addition wraps around)
