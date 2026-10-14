// Task 1.12 - Print the Fibonacci series up to n terms.

let n = 10
var first = 0
var second = 1

print("Fibonacci series (\(n) terms):")
for _ in 0..<n {
    print(first, terminator: " ")
    let next = first + second
    first = second
    second = next
}
print()
