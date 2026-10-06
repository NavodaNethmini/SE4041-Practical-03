// SE4041 - Practical 03
// Exercise 06 - Mutating Methods and Type Methods

print("=== Exercise 06 ===")

// Part 1 - Mutating Method in a Struct

struct Counter {
    var value = 0

    mutating func increment() {
        value += 1
    }
}

var counter = Counter()

print("\n=== Mutating Method ===")

print("Initial Value: \(counter.value)")

counter.increment()
counter.increment()
counter.increment()

print("Value After Incrementing: \(counter.value)")


// Part 2 - Student Struct with Mutating Method

struct Student {
    var name: String
    var mark: Int

    mutating func updateMark(newMark: Int) {
        mark = newMark
    }

    func displayDetails() {
        print("Name: \(name)")
        print("Mark: \(mark)")
    }
}

var student = Student(
    name: "Amal",
    mark: 65
)

print("\n=== Student Before Update ===")
student.displayDetails()

student.updateMark(newMark: 85)

print("\n=== Student After Update ===")
student.displayDetails()


// Part 3 - Type Method

struct Calculator {

    static func add(_ number1: Int, _ number2: Int) -> Int {
        return number1 + number2
    }

    static func multiply(_ number1: Int, _ number2: Int) -> Int {
        return number1 * number2
    }
}

print("\n=== Type Methods ===")

let sum = Calculator.add(10, 5)
let product = Calculator.multiply(10, 5)

print("10 + 5 = \(sum)")
print("10 x 5 = \(product)")


// Activity - Bank Account Struct

print("\n=== Activity: Bank Account ===")

struct BankAccount {
    var owner: String
    var balance: Double

    mutating func deposit(amount: Double) {
        balance += amount
    }

    mutating func withdraw(amount: Double) {
        if amount <= balance {
            balance -= amount
            print("Withdrawal Successful")
        } else {
            print("Insufficient Balance")
        }
    }

    func displayBalance() {
        print("Owner: \(owner)")
        print("Balance: \(balance)")
    }
}

var account = BankAccount(
    owner: "Nimali",
    balance: 5000
)

print("\nInitial Account:")
account.displayBalance()

account.deposit(amount: 2000)

print("\nAfter Deposit:")
account.displayBalance()

account.withdraw(amount: 1500)

print("\nAfter Withdrawal:")
account.displayBalance()