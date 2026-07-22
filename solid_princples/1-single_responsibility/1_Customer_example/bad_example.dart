// This is a bad example of the Single Responsibility Principle (SRP) in action.
// The Customer class has multiple responsibilities: storing customer data, updating customer data, and generating customer reports.
class Customer {
  String _name;
  Customer(this._name);

  // one responsibility: store customer data
  void StoreCustomer() {
    print("Customer $_name stored in database");
  }

  // one responsibility: update customer data
  void UpdateCustomer() {
    print("Customer $_name updated in database");
  }

  // one responsibility: generate customer report
  void generateCustomerReport() {
    print("Report generated for customer $_name");
  }
}
