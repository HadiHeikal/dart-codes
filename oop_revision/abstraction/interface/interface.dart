// In Dart, every class is implicit interface.
// An interface defines a syntax that a class must follow.
//It is a contract that defines the capabilities of a class.
//It is used to achieve abstraction in the Dart  programming language.
//When you implement an interface, you must implement all the properties and methods defined in the interface.
//Keyword implements is used to implement an interface.

// abstract class as interface
abstract class Vehicle {
  void start();
  void stop();
}

// implements interface
class Car implements Vehicle {
  @override
  void start() {
    print('Car started');
  }

  @override
  void stop() {
    print('Car stopped');
  }
}

void main() {
  var car = Car();
  car.start();
  car.stop();
}
