// 1. Base Abstract Class
abstract class PaymentMethod {
  void pay(double amount);

  // 2. Factory Constructor: Decides which implementation to return based on type
  factory PaymentMethod(String type) {
    if (type == 'visa') {
      return VisaPayment();
    } else if (type == 'cash') {
      return CashPayment();
    } else {
      throw Exception('Unsupported payment method');
    }
  }
}

// 3. Concrete Subclasses (Implementations)
class VisaPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid $amount via Visa.. Contacting bank');
  }
}

class CashPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Cash payment of $amount registered in safe');
  }
}

void main() {
  PaymentMethod paymentMethod = PaymentMethod('visa');
  paymentMethod.pay(100.0); // Output: Paid 100.0 via Visa.. Contacting bank

  paymentMethod = PaymentMethod('cash');
  paymentMethod.pay(200.0); // Output: Cash payment of 200.0 registered in safe

  // Output: Unsupported payment method
  try {
    paymentMethod = PaymentMethod('unknown');
  } catch (e) {
    print(e);
  }
}
