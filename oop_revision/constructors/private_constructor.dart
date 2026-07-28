// private constructor can't be called from outside the class.
// it can only be called from the same class.

// example:
class Student {
  String? name;
  int? age;
  int? rollNumber;

  // private constructor
  Student._privateConstructor(this.name, this.age, this.rollNumber);

  // named constructor
  Student.namedConstructor(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Roll Number: ${this.rollNumber}");
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student._privateConstructor("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}
