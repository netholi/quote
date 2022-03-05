import 'package:flutter/material.dart';
import 'quoteText.dart';
import 'quoteCard.dart';

void main() => runApp(MaterialApp(
      home: QuoteApp(),
    ));

class QuoteApp extends StatefulWidget {
  QuoteApp({Key? key}) : super(key: key);

  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quotes')),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes
                .map((e) => QuoteCard(
                      quote: e,
                      delete: () {
                        setState(() {
                          quotes.remove(e);
                        });
                      },
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
