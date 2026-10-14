// Additional Task 3 (Enum/Struct/Class) - Why does this not compile?

struct Counter {
    var value = 0
    mutating func increment() { value += 1 }
}

class Box {
    var value = 0
    func increment() { value += 1 }
}

// ORIGINAL (does not compile):
//
//   let c = Counter()
//   c.increment()      // <-- error: cannot use mutating member on immutable value: 'c' is a 'let' constant
//
// REASON: Counter is a struct, a value type. A mutating method changes the struct itself,
// and a struct stored in a "let" constant cannot change.
//
// FIX: declare the struct with "var".
var c = Counter()
c.increment()
print("Counter value: \(c.value)")   // 1

// WHY THE CLASS VERSION IS FINE: Box is a class, a reference type. A "let" constant holds
// a reference that cannot be pointed at another object, but the object it refers to can
// still be changed. So b.increment() compiles even though b is a "let".
let b = Box()
b.increment()
print("Box value: \(b.value)")   // 1

// === checks identity: do two constants refer to the very same object?
let b2 = b
b2.increment()
print("b === b2 ? \(b === b2)")   // true
print("b.value = \(b.value), b2.value = \(b2.value)")   // 2 and 2

let other = Box()
print("b === other ? \(b === other)")   // false: a different object
