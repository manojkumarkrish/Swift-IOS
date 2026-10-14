// Task 3.8 - enum Planet: CaseIterable, with allCases and a computed order from the Sun.

enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune

    var orderFromSun: Int {
        switch self {
        case .mercury: return 1
        case .venus:   return 2
        case .earth:   return 3
        case .mars:    return 4
        case .jupiter: return 5
        case .saturn:  return 6
        case .uranus:  return 7
        case .neptune: return 8
        }
    }
}

print("Number of planets: \(Planet.allCases.count)")
for planet in Planet.allCases {
    print("\(planet) is planet number \(planet.orderFromSun) from the Sun")
}
