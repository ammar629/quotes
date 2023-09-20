import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  const QuoteCard(this.quote, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800],
            ),
            textAlign: TextAlign.center,
          )
        ]),
      ),
    );
  }
}