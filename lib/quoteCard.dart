import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                quote.author,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                //textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Center(
              child: TextButton.icon(
                  onPressed: delete,
                  icon: Icon(Icons.delete),
                  label: Text('Delete')),
            )
          ],
        ),
      ),
    );
  }
}
