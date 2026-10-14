// Task 3.16 - static properties and methods.

struct MathHelper {
    // A static method belongs to the type, not an instance.
    static func square(_ n: Int) -> Int {
        return n * n
    }
}

print("Square of 7: \(MathHelper.square(7))")

class Counter {
    // A static property is shared by every instance.
    static var instanceCount = 0

    init() {
        Counter.instanceCount += 1
    }
}

_ = Counter()
_ = Counter()
_ = Counter()
print("Counter instances created: \(Counter.instanceCount)")   // 3
