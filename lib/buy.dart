import 'package:bookverse/books_details.dart';
import 'package:flutter/material.dart';
import 'book_store.dart';


class BuyPage extends StatefulWidget {
  @override
  State<BuyPage> createState() => BuyPageState();
}

class BuyPageState extends State<BuyPage> {
  void _deleteBook(int index) {
    setState(() {
      BookStore.books.removeAt(index);
    });
  }

  void _openBookDetails(Book book) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookDetailsPage(book: book)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy ',style: TextStyle(color: Colors.brown.shade700,fontSize: 27,fontWeight: FontWeight.w700),),
        backgroundColor: Colors.yellow,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: BookStore.books.length,
        itemBuilder: (context, index) {
          final book = BookStore.books[index];
          return GestureDetector(
            onTap: () => _openBookDetails(book),
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(book.photoUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(book.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text(book.description, style: TextStyle(fontSize: 12)),
                        Text('Price: ₹${book.amount}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _deleteBook(index),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}