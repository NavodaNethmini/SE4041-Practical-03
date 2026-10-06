// SE4041 - Practical 03
// Exercise 03 - Structs

print("=== Exercise 03: Structs ===")

// 1. Basic Struct
struct Student {
    var name: String
    var mark: Int
}

var student1 = Student(name: "Amal", mark: 75)

print("\n=== Basic Struct ===")
print("Name: \(student1.name)")
print("Mark: \(student1.mark)")


// 2. Modify Struct Properties
print("\n=== Modify Properties ===")

student1.mark = 82

print("Updated Mark: \(student1.mark)")


// 3. Struct with a Method
struct Rectangle {
    var width: Double
    var height: Double

    func calculateArea() -> Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 10, height: 5)

print("\n=== Struct with Method ===")
print("Width: \(rectangle.width)")
print("Height: \(rectangle.height)")
print("Area: \(rectangle.calculateArea())")


// Activity - Book Struct
print("\n=== Activity: Book Struct ===")

struct Book {
    var title: String
    var author: String
    var price: Double

    func displayDetails() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Price: \(price)")
    }
}

let book1 = Book(
    title: "Swift Programming",
    author: "John Smith",
    price: 2500.00
)

book1.displayDetails()