// This is a good example of the Single Responsibility Principle (SRP) in action.
class Customer {
  String _name;
  Customer(this._name);
  String get name => _name;
}

// This class has a single responsibility: storing customer data.
class CustomerRepository {
  void storeCustomer(Customer customer) {
    print("Customer ${customer.name} stored in database");
  }
}

// This class has a single responsibility: updating customer data.
class CustomerUpdater {
  void updateCustomer(Customer customer) {
    print("Customer ${customer.name} updated in database");
  }
}

// This class has a single responsibility: generating customer reports.
class CustomerReportGenerator {
  void generateCustomerReport(Customer customer) {
    print("Report generated for customer ${customer.name}");
  }
}

// example usage at clean architecture

class CustomerService {
  final CustomerRepository _customerRepository;
  final CustomerUpdater _customerUpdater;
  final CustomerReportGenerator _customerReportGenerator;

  CustomerService(
    this._customerRepository,
    this._customerUpdater,
    this._customerReportGenerator,
  );

  void createCustomer(Customer customer) {
    _customerRepository.storeCustomer(customer);
    _customerUpdater.updateCustomer(customer);
    _customerReportGenerator.generateCustomerReport(customer);
  }
}
