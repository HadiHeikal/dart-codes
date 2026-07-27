// Parameterized constructor with default values
// It is used to initialize the instance variables of the class.
// It is used to set the default values of the instance variables.
class Student {
  String? name;
  int? age;

  // Constructor with default values
  Student({String? name = "John", int? age = 0}) {
    this.name = name;
    this.age = age;
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student();
  print("Name: ${student.name}");
  print("Age: ${student.age}");
}
