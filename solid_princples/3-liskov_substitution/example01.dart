class Rectangle {
  int width;
  int height;
  Rectangle(this.width, this.height);

  // setters
  void setWidth(int width) => this.width = width;
  void setHeight(int height) => this.height = height;

  // getters
  int getWidth() => width;
  int getHeight() => height;

  int getArea() => width * height;
}

class Square extends Rectangle {
  Square(int size) : super(size, size);

  @override
  void setWidth(int width) {
    this.width = width;
    this.height = width;
  }

  @override
  void setHeight(int height) {
    this.height = height;
    this.width = height;
  }
}
