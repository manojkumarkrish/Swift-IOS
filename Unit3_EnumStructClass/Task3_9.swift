// Task 3.9 - enum PaymentMethod with associated values.

enum PaymentMethod {
    case cash
    case card(number: String)
    case upi(id: String)
}

func pay(using method: PaymentMethod) {
    switch method {
    case .cash:
        print("Paid in cash")
    case .card(let number):
        // Show only the last 4 digits of the card.
        print("Paid by card ending in \(number.suffix(4))")
    case .upi(let id):
        print("Paid via UPI id \(id)")
    }
}

pay(using: .cash)
pay(using: .card(number: "4111111111111234"))
pay(using: .upi(id: "anu@upi"))
