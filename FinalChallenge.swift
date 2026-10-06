// SE4041 - Practical 03
// Final Challenge - Student Management System

print("=== Student Management System ===")

// Grade Enum
enum Grade {
    case A
    case B
    case C
    case D
    case F
}


// Student Struct
struct Student {
    var name: String
    var marks: [Int]

    // Calculate Average
    func calculateAverage() -> Double {
        if marks.isEmpty {
            return 0
        }

        let total = marks.reduce(0, +)
        return Double(total) / Double(marks.count)
    }

    // Determine Grade
    func getGrade() -> Grade {
        let average = calculateAverage()

        switch average {
        case 75...100:
            return .A
        case 65..<75:
            return .B
        case 55..<65:
            return .C
        case 45..<55:
            return .D
        default:
            return .F
        }
    }

    // Display Student Details
    func displayDetails() {
        print("Name: \(name)")
        print("Marks: \(marks)")
        print("Average: \(calculateAverage())")
        print("Grade: \(getGrade())")
    }
}


// Student Manager Class
class StudentManager {

    var students: [Student] = []

    // Add Student
    func addStudent(_ student: Student) {
        students.append(student)
        print("\(student.name) added successfully.")
    }

    // Display All Students
    func displayAllStudents() {

        print("\n=== All Students ===")

        for student in students {
            student.displayDetails()
            print("--------------------")
        }
    }

    // Find Student
    func findStudent(name: String) {

        print("\n=== Search Result ===")

        for student in students {

            if student.name == name {
                student.displayDetails()
                return
            }
        }

        print("Student not found")
    }
}


// Create Student Manager
let manager = StudentManager()


// Create Students
let student1 = Student(
    name: "Amal",
    marks: [75, 80, 70]
)

let student2 = Student(
    name: "Nimali",
    marks: [90, 85, 95]
)

let student3 = Student(
    name: "Ruwan",
    marks: [55, 60, 50]
)


// Add Students
print("\n=== Adding Students ===")

manager.addStudent(student1)
manager.addStudent(student2)
manager.addStudent(student3)


// Display All Students
manager.displayAllStudents()


// Search for a Student
manager.findStudent(name: "Nimali")


// Search for Missing Student
manager.findStudent(name: "Kasun")