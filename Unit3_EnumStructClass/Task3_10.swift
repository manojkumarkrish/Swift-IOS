// Task 3.10 - struct BankAccount with mutating deposit() and withdraw().
// withdraw() refuses to overdraw the account.

struct BankAccount {
    var balance: Double

    // Structs are value types, so methods that change properties must be mutating.
    mutating func deposit(_ amount: Double) {
        guard amount > 0 else {
            print("Deposit must be positive")
            return
        }
        balance += amount
        print("Deposited \(amount). Balance: \(balance)")
    }

    mutating func withdraw(_ amount: Double) {
        guard amount > 0 else {
            print("Withdrawal must be positive")
            return
        }
        guard amount <= balance else {
            print("Insufficient funds: tried to withdraw \(amount), balance is \(balance)")
            return
        }
        balance -= amount
        print("Withdrew \(amount). Balance: \(balance)")
    }
}

var account = BankAccount(balance: 1000)
account.deposit(500)
account.withdraw(300)
account.withdraw(5000)   // refused
