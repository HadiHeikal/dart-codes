class OrderPayment {
  final int amount;

  OrderPayment({required this.amount});

  // factory constructor
  factory OrderPayment.create(int amount, String currency) {
    if (currency.isNotEmpty) {
      amount = amount * 100;
    }

    return OrderPayment(amount: amount);
  }
}

void main() {
  var orderPayment = OrderPayment.create(100, 'USD');
  print(orderPayment.amount);
}
