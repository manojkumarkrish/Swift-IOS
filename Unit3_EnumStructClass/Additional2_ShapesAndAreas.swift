// Additional Task 2 (Enum/Struct/Class) - Shapes and areas.

enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)

    var area: Double {
        switch self {
        case .circle(let radius):
            return Double.pi * radius * radius
        case .rectangle(let width, let height):
            return width * height
        case .triangle(let base, let height):
            return 0.5 * base * height
        }
    }
}

let shapes: [Shape] = [
    .circle(radius: 3),
    .rectangle(width: 4, height: 5),
    .triangle(base: 6, height: 2)
]
for shape in shapes {
    print("\(shape) has area \(shape.area)")
}

struct Rectangle {
    var width: Double
    var height: Double

    var perimeter: Double {
        return 2 * (width + height)
    }

    mutating func scale(by factor: Double) {
        width *= factor
        height *= factor
    }
}

let original = Rectangle(width: 4, height: 5)
var copy = original
copy.scale(by: 2)

print("Original: \(original.width) x \(original.height), perimeter \(original.perimeter)")  // 4 x 5, 18
print("Scaled copy: \(copy.width) x \(copy.height), perimeter \(copy.perimeter)")           // 8 x 10, 36
// The original is unchanged because a struct is copied on assignment.
