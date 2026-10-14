// Task 3.11 - Value types vs reference types.

struct PointStruct {
    var x: Int
}

class PointClass {
    var x: Int
    init(x: Int) { self.x = x }
}

// Struct: assignment makes an independent copy.
let originalStruct = PointStruct(x: 1)
var copiedStruct = originalStruct
copiedStruct.x = 99
print("Struct original: \(originalStruct.x)")   // 1
print("Struct copy:     \(copiedStruct.x)")     // 99

// Class: assignment copies the reference, so both names point to one object.
let originalClass = PointClass(x: 1)
let copiedClass = originalClass
copiedClass.x = 99
print("Class original: \(originalClass.x)")     // 99
print("Class copy:     \(copiedClass.x)")       // 99

// Explanation:
// A struct is a value type. "var copiedStruct = originalStruct" duplicates the data,
// so changing the copy leaves the original untouched.
// A class is a reference type. "let copiedClass = originalClass" only duplicates the
// reference to the same object in memory, so a change through one name is visible
// through the other.
