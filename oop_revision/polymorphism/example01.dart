// Poly means many and morph means forms
class Animal {
  void eat() {
    print("Eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Barking");
  }

  @override
  void eat() {
    print("Eating from Dog");
  }
}

class Cat extends Animal {
  void meow() {
    print("Meowing");
  }

  @override
  void eat() {
    print("Eating from Cat");
  }
}

void main() {
  Dog dog = Dog();
  dog.eat();
  dog.bark();
  // Output:
  // Eating from Dog
  // Barking

  Cat cat = Cat();
  cat.eat();
  cat.meow();
  // Output:
  // Eating from Cat
  // Meowing
}
