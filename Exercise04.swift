// SE4041 - Practical 03
// Exercise 04 - Classes

print("=== Exercise 04: Classes ===")

// 1. Basic Class
class Student {
    var name: String
    var mark: Int

    init(name: String, mark: Int) {
        self.name = name
        self.mark = mark
    }

    func displayDetails() {
        print("Name: \(name)")
        print("Mark: \(mark)")
    }
}

let student1 = Student(name: "Amal", mark: 75)

print("\n=== Basic Class ===")
student1.displayDetails()


// 2. Modify Class Properties
print("\n=== Modify Class Properties ===")

student1.mark = 85

print("Updated Mark: \(student1.mark)")


// 3. Class with a Method
class BankAccount {
    var owner: String
    var balance: Double

    init(owner: String, balance: Double) {
        self.owner = owner
        self.balance = balance
    }

    func deposit(amount: Double) {
        balance += amount
    }

    func displayBalance() {
        print("Owner: \(owner)")
        print("Balance: \(balance)")
    }
}

let account = BankAccount(owner: "Nimali", balance: 5000)

print("\n=== Bank Account ===")

account.displayBalance()

account.deposit(amount: 1500)

print("\nAfter Deposit:")
account.displayBalance()


// Activity - Car Class
print("\n=== Activity: Car Class ===")

class Car {
    var brand: String
    var model: String
    var year: Int

    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }

    func displayDetails() {
        print("Brand: \(brand)")
        print("Model: \(model)")
        print("Year: \(year)")
    }
}

let car1 = Car(
    brand: "Toyota",
    model: "Corolla",
    year: 2024
)

car1.displayDetails()