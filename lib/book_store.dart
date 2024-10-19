class Book {
  final String title;
  final String description;
  final String seller;
  final String photoUrl;
  final int amount;

  Book({
    required this.title,
    required this.description,
    required this.seller,
    required this.photoUrl,
    required this.amount,
  });
}

class BookStore {
  static List<Book> books = [];
}