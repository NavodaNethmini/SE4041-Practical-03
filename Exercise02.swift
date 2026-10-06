// SE4041 - Practical 03
// Exercise 02 - Enums

print("=== Exercise 02: Enums ===")

// Basic Enum
enum Direction {
    case north
    case south
    case east
    case west
}

var currentDirection = Direction.north

print("\n=== Basic Enum ===")
print("Current Direction: \(currentDirection)")


// Enum with Switch
print("\n=== Enum with Switch ===")

switch currentDirection {
case .north:
    print("Moving North")
case .south:
    print("Moving South")
case .east:
    print("Moving East")
case .west:
    print("Moving West")
}


// Activity - Student Grade Enum
print("\n=== Activity: Student Grade ===")

enum Grade {
    case A
    case B
    case C
    case D
    case F
}

func gradeMessage(for grade: Grade) -> String {
    switch grade {
    case .A:
        return "Excellent"
    case .B:
        return "Very Good"
    case .C:
        return "Good"
    case .D:
        return "Pass"
    case .F:
        return "Fail"
    }
}

let grade1 = Grade.A
let grade2 = Grade.C
let grade3 = Grade.F

print("Grade A: \(gradeMessage(for: grade1))")
print("Grade C: \(gradeMessage(for: grade2))")
print("Grade F: \(gradeMessage(for: grade3))")