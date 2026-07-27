class Employee {
  String? _name;
  int? _salary;
  String? _employeeType;

  // Getter
  String? get name => _name;
  int? get salary => _salary;
  String? get employeeType => _employeeType;

  // Setter
  set name(String? name) => _name = name;
  set salary(int? salary) => _salary = salary;
  set employeeType(String? employeeType) => _employeeType = employeeType;

  // Note: You can use same name for getter and setter. But, you can’t use same name for getter, setter and property name.

  String printEmployeeData() =>
      'name: $name, salary: $salary, employeeType: $employeeType';
}
