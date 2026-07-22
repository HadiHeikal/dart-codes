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
  // this class has a single responsibility:
  //  calculating the total price of the invoice, including discounts and taxes.
  double calculateTotal() {
    double price = ((book.price - book.price * discountRate) * quantity);
    double priceWithTaxes = price * (1 + taxRate);
    return priceWithTaxes;
  }
}

// This class has a single responsibility:
// printing the invoice details to the console.
class InvoicePrinter {
  void printInvoice(Invoice invoice) {
    print('${invoice.quantity} x ${invoice.book.name} ${invoice.book.price}\$');
    print('Discount Rate: ${invoice.discountRate}');
    print('Tax Rate: ${invoice.taxRate}');
    print('Total: ${invoice.total}');
  }
}

// This class has a single responsibility:
// saving the invoice to a file with the given filename.
class InvoiceSaver {
  void saveToFile(Invoice invoice, String filename) {
    // Creates a file with given name and writes the invoice
    print('Invoice saved to $filename');
  }
}
