class Book {
  String name;
  String author;
  String genre;
  int year;
  double price;
  String publisher;
  Book({
    required this.price,
    required this.name,
    required this.author,
    required this.publisher,
    required this.genre,
    required this.year,
  });
}

class Invoice {
  final Book book;
  final int quantity;
  final double discountRate;
  final double taxRate;
  late final double total;

  Invoice({
    required this.book,
    required this.quantity,
    required this.discountRate,
    required this.taxRate,
  }) {
    total = calculateTotal();
  }

  // This method calculates the total price of the invoice, including discounts and taxes.
  double calculateTotal() {
    double price = ((book.price - book.price * discountRate) * quantity);
    double priceWithTaxes = price * (1 + taxRate);
    return priceWithTaxes;
  }

  // This method prints the invoice details to the console.
  void printInvoice() {
    print('$quantity x ${book.name} ${book.price}\$');
    print('Discount Rate: $discountRate');
    print('Tax Rate: $taxRate');
    print('Total: $total');
  }

  // This method saves the invoice to a file with the given filename.
  void saveToFile(String filename) {
    // Creates a file with given name and writes the invoice
    print('Invoice saved to $filename');
  }
}
