// Task 1.13 - Prime check, then all primes between 1 and 50.

func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    var divisor = 2
    while divisor * divisor <= n {
        if n % divisor == 0 { return false }
        divisor += 1
    }
    return true
}

print("17 is prime? \(isPrime(17))")
print("18 is prime? \(isPrime(18))")

print("Primes between 1 and 50:")
for n in 1...50 where isPrime(n) {
    print(n, terminator: " ")
}
print()
