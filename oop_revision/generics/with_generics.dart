// Using Generics
class Data<T> {
  T data;
  Data(this.data);
  dataType() => print("Data type: ${data.runtimeType}");
}

void main() {
  // create an object of type int and double
  Data<int> intData = Data<int>(10);
  Data<double> doubleData = Data<double>(10.5);

  // print the data
  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");

  Data<String> stringData = Data<String>("Hello");
  stringData.dataType();
}
