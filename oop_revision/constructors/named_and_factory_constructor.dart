class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Default Constructor
  Student() {
    print("This is a default constructor");
  }

  // Parameterized Constructor
  Student.parameterizedConstructor({this.name, this.age, this.rollNumber});

  // Named Constructor
  Student.namedConstructor(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }

  // Factory Constructor
  factory Student.factoryConstructor(String name, int age, int rollNumber) {
    return Student()
      ..name = name
      ..age = age
      ..rollNumber = rollNumber;
  }

  // Named Factory Constructor
  factory Student.namedFactoryConstructor(
    String name,
    int age,
    int rollNumber,
  ) {
    return Student()
      ..name = name
      ..age = age
      ..rollNumber = rollNumber;
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student.namedConstructor("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

  // Here person is object of class Person.
  Student person = Student.namedFactoryConstructor("John", 20, 1);
  print("Name: ${person.name}");
  print("Age: ${person.age}");
}
