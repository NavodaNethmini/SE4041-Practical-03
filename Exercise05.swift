// SE4041 - Practical 03
// Exercise 05 - Value Types and Reference Types

print("=== Exercise 05: Value Types and Reference Types ===")

// Part 1 - Struct: Value Type

struct StudentStruct {
    var name: String
    var mark: Int
}

var studentA = StudentStruct(name: "Amal", mark: 75)
var studentB = studentA

studentB.mark = 90

print("\n=== Struct - Value Type ===")
print("Student A Mark: \(studentA.mark)")
print("Student B Mark: \(studentB.mark)")


// Part 2 - Class: Reference Type

class StudentClass {
    var name: String
    var mark: Int

    init(name: String, mark: Int) {
        self.name = name
        self.mark = mark
    }
}

var studentC = StudentClass(name: "Nimali", mark: 65)
var studentD = studentC

studentD.mark = 88

print("\n=== Class - Reference Type ===")
print("Student C Mark: \(studentC.mark)")
print("Student D Mark: \(studentD.mark)")


// Activity - Compare Struct and Class Behaviour

print("\n=== Activity: Struct vs Class ===")

struct LaptopStruct {
    var brand: String
    var price: Double
}

var laptop1 = LaptopStruct(
    brand: "Dell",
    price: 250000
)

var laptop2 = laptop1

laptop2.price = 300000

print("\nStruct Copies:")
print("Laptop 1 Price: \(laptop1.price)")
print("Laptop 2 Price: \(laptop2.price)")


class LaptopClass {
    var brand: String
    var price: Double

    init(brand: String, price: Double) {
        self.brand = brand
        self.price = price
    }
}

var laptop3 = LaptopClass(
    brand: "HP",
    price: 200000
)

var laptop4 = laptop3

laptop4.price = 275000

print("\nClass References:")
print("Laptop 3 Price: \(laptop3.price)")
print("Laptop 4 Price: \(laptop4.price)")