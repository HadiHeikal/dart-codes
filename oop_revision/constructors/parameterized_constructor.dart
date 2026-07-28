//  Parameterized constructor is the constructor that takes parameters.
// It is used to initialize the instance variables of the class.

class Person {
  String name;
  int age;

  Person(this.name, this.age) {
    this.name = name;
    this.age = age;
  }
  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
  }
}

void main() {
  Person person = Person("John", 30);
  person.display();
}
