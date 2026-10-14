// Task 1.15 - FizzBuzz for 1-30.
// Check "both" first, otherwise multiples of 15 would only print "Fizz".

for i in 1...30 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
