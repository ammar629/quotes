import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List of Quotes
  List<String>quotes = [
    'The strongest among you is the one who controls his anger',
    'Seek knowledge from cradle to grave',
    'Allah does not look at your forms and possessions but he looks at your hearts and your deeds',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Great Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(), 
        ),
      backgroundColor: Colors.grey[200],
    );
  }
}
