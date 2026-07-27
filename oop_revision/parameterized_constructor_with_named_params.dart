class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student({String? name, int? age, int? rollNumber}) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

class Person {
  String? name;
  int? age;

  // Constructor
  Person({required this.name, required this.age});

  // copywith method
  // It is used to copy the instance variables of the class.
  Person copyWith({String? name, int? age}) =>
      Person(name: name ?? this.name, age: age ?? this.age);
}

void main() {
  // Here student is object of class Student.
  Student student = Student(name: "John", age: 20, rollNumber: 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

  // Here person is object of class Person.
  Person person = Person(name: "John", age: 20);
  print("Name: ${person.name}");
  print("Age: ${person.age}");

  Person person2 = person.copyWith(name: "John Doe");
  print("Name: ${person2.name}");
  print("Age: ${person2.age}");
}
