// Task 3.5 - struct Rectangle with a computed property area.

struct Rectangle {
    var width: Double
    var height: Double

    // Computed: calculated every time it is read, not stored.
    var area: Double {
        return width * height
    }
}

var rectangle = Rectangle(width: 5, height: 3)
print("Area: \(rectangle.area)")   // 15.0

rectangle.width = 10
print("Area after changing width: \(rectangle.area)")   // 30.0
