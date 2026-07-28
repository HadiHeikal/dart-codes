// static to share the same functionality with different objects.
class Person {
  static String name = "John";
  static void sayHello() {
    print("Hello from Person");
  }
}

class Student {
  static String name = "John Doe";
  static void sayHello() {
    print("Hello from Student");
  }
}

void main() {
  // we can access the static properties and methods directly with the class name
  Person.sayHello();
  Student.sayHello();

  // we can't access the static properties and methods directly with the object
  // this is violating the rule of static
  // Person person = Person();
  // person.name = "John Doe";
  // person.sayHello();
}
