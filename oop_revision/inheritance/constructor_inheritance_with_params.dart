class Laptop {
  String name;
  String color;

  // Constructor
  Laptop(this.name, this.color) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook extends Laptop {
  int ram;
  // Constructor
  MacBook(String name, String color, {this.ram = 8}) : super(name, color) {
    print("MacBook constructor");
  }

  void display() {
    print("Name: ${super.name}");
    print("Color: ${super.color}");
  }
}

void main() {
  var macbook = MacBook("MacBook Pro", "Silver");
  var macbookPro = MacBook("MacBook Pro", "Silver", ram: 16);
  macbook.display();
  macbookPro.display();
}
