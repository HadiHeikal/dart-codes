void main() {}

sealed class vehicle {}

// Sealed class
// A sealed class is a class that can only be extended by a limited number of subclasses.
// In Dart, we can use the `sealed` keyword to define a sealed class.
// The sealed class can only be extended by the subclasses defined in the same file.
// In this example, we have a sealed class `vehicle` and five subclasses: `car`, `bike`, `bus`, `truck`, and `motorcicle`.
// The sealed class `vehicle` cannot be extended by any other class outside of this file.

class car extends vehicle {
  String start() {
    return "Car is starting";
  }
}

class bike extends vehicle {
  String run() {
    return "Bike is running";
  }
}

class bus extends vehicle {
  String move() {
    return "Bus is moving";
  }
}

class truck extends vehicle {
  String load() {
    return "Truck is loading";
  }
}

class motorcicle extends vehicle {
  String ride() {
    return "Motorcycle is riding";
  }
}

// without using sealed class, we can use if-else statements to check the type of the vehicle and call the appropriate method.
String extractVehicleFeatures(vehicle vehicle) {
  if (vehicle is car) {
    return vehicle.start();
  } else if (vehicle is bike) {
    return vehicle.run();
  } else if (vehicle is bus) {
    return vehicle.move();
  } else if (vehicle is truck) {
    return vehicle.load();
  } else if (vehicle is motorcicle) {
    return vehicle.ride();
  } else {
    return "Unknown vehicle";
  }
}

// with using sealed class, we can use pattern matching to check the type of the vehicle and call the appropriate method.
String extractVehicleFeaturesWithSealedClass(vehicle vehicle) {
  switch (vehicle) {
    case car():
      return vehicle.start();
    case bike():
      return vehicle.run();
    case bus():
      return vehicle.move();
    case truck():
      return vehicle.load();
    case motorcicle():
      return vehicle.ride();
    // ignore: unreachable_switch_default _ Dead code.
    default:
      return "Unknown vehicle";
  }
}
