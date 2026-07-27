// Inheritance of constructor in Dart is a process of inheriting the constructor of the parent class to the child class.
//It is a way of reusing the code of the parent class.

class Laptop {
  // Constructor
  Laptop() {
    print("Laptop constructor");
  }
}

class MacBook extends Laptop {
  // Constructor
  MacBook() {
    print("MacBook constructor");
  }
}

void main() {
  // ignore: unused_local_variable
  var macbook = MacBook();
  // Note: The constructor of the parent class is called first and then the constructor of the child class is called.
  // Output:
  // Laptop constructor
  // MacBook constructor
}
