// File: student_grade.dart

class Student {
  String name;
  double _grade = 0.0; // private variable (cannot be accessed directly)

  // Constructor
  Student(this.name, this._grade);

  // Getter: retrieve grade
  double get grade {
    return _grade;
  }

  // Setter: set grade with validation
  set grade(double value) {
    if (value < 0 || value > 100) {
      print("Invalid grade! It must be between 0 and 100.");
    } else {
      _grade = value;
    }
  }

  // Method to display student info
  void showInfo() {
    print("Student: $name | Grade: $_grade");
  }
}

void main() {
  // Create a Student object
  Student student = Student("Alice", 85);

  // Access grade using getter
  print("Initial Grade: ${student.grade}");

  // Update grade using setter
  student.grade = 95;
  student.showInfo();

  // Try setting an invalid grade
  student.grade = 120;
}
