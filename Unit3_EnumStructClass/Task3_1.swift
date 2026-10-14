// Task 3.1 - enum Direction with a switch.

enum Direction {
    case north, south, east, west
}

func describe(_ direction: Direction) {
    switch direction {
    case .north: print("Heading north - up the map")
    case .south: print("Heading south - down the map")
    case .east:  print("Heading east - towards the sunrise")
    case .west:  print("Heading west - towards the sunset")
    }
}

describe(.north)
describe(.south)
describe(.east)
describe(.west)
