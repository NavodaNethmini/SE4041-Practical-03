// SE4041 - Practical 03
// Exercise 01 - Functions

print("=== Exercise 01: Functions ===")

// 1. Simple Function
func greet() {
    print("Welcome to SE4041")
}

greet()


// 2. Function with a Parameter
print("\n=== Function with a Parameter ===")

func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")


// 3. Returning a Value
print("\n=== Returning a Value ===")

func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }

    return "Fail"
}

let gradeResult = grade(for: 68)
print("Mark 68: \(gradeResult)")


// Activity 1 - Calculate Average
print("\n=== Activity 1: Calculate Average ===")

func calculateAverage(_ mark1: Double,
                      _ mark2: Double,
                      _ mark3: Double) -> Double {
    return (mark1 + mark2 + mark3) / 3
}

let averageResult = calculateAverage(75, 82, 68)
print("Average: \(averageResult)")


// 4. Argument Labels
print("\n=== Argument Labels ===")

func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")


// 5. Removing an Argument Label
print("\n=== Removing an Argument Label ===")

func double(_ number: Int) -> Int {
    return number * 2
}

print("Double of 10: \(double(10))")


// 6. Default Parameter Values
print("\n=== Default Parameter Values ===")

func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }

    return "Fail"
}

print("68 with default pass mark: \(result(68))")
print("68 with pass mark 75: \(result(68, passMark: 75))")


// Activity 2 - Final Result
print("\n=== Activity 2: Final Result ===")

func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }

    return "Fail"
}

print("Mark 45: \(finalResult(mark: 45))")
print("Mark 75: \(finalResult(mark: 75))")
print("Mark 75, Pass Mark 80: \(finalResult(mark: 75, passMark: 80))")