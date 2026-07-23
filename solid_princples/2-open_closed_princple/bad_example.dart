// bad example violate OCP
class Employee {
  String name;
  int salary;
  String employeeType;
  Employee(this.name, this.salary, this.employeeType);

  double CalculateBonus(double hours) {
    double bonusRate = (salary / 30 / 8);
    if (employeeType == 'manager')
      bonusRate *= 2;
    else {
      if (employeeType == 'developer') bonusRate *= 1.5;
    }
    return hours * bonusRate;
  }

  String printEmployeeData() {
    return 'name: $name, salary: $salary, employeeType: $employeeType';
  }
}
