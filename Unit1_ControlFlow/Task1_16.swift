// Task 1.16 - Right-angled triangle of stars with nested loops.

let n = 5

print("Full triangle:")
for row in 1...n {
    for _ in 1...row {
        print("*", terminator: "")
    }
    print()
}

// Variation: use continue to skip even rows.
print("Skipping even rows:")
for row in 1...n {
    if row % 2 == 0 {
        continue
    }
    for _ in 1...row {
        print("*", terminator: "")
    }
    print()
}
