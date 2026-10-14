// Task 1.18 - Categorise BMI using switch with ranges and where clauses.
// Under 18.5 underweight, 18.5-24.9 normal, 25-29.9 overweight, 30+ obese.

func categorise(bmi: Double) -> String {
    switch bmi {
    case ..<0:
        return "Invalid BMI"
    case 0..<18.5:
        return "Underweight"
    case 18.5..<25:
        return "Normal"
    case let x where x >= 25 && x < 30:
        return "Overweight"
    case let x where x >= 30:
        return "Obese"
    default:
        return "Invalid BMI"
    }
}

for bmi in [16.0, 22.5, 27.3, 34.8, -1.0] {
    print("BMI \(bmi): \(categorise(bmi: bmi))")
}
