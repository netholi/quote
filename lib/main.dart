import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteApp(),
    ));

class QuoteApp extends StatelessWidget {
  QuoteApp({Key? key}) : super(key: key);
  List<Quote> quotes = [
    Quote(
        text: 'The journey of a thousand miles begins with one step.',
        author: 'Lao Tzu'),
    Quote(
        text: 'When the going gets tough, the tough get going.',
        author: 'Joe Kennedy'),
    Quote(text: 'Get busy living or get busy dying.', author: 'Stephen King'),
    Quote(
        text: 'You miss 100 percent of the shots you never take..',
        author: 'Wayne Gretzky'),
    Quote(
        text: 'If you’re going through hell, keep going.',
        author: 'Winston Churchill'),
    Quote(
        text:
            'Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do.',
        author: 'Mark Twain'),
    Quote(
        text:
            'Sing like no one’s listening, love like you’ve never been hurt, dance like nobody’s watching, and live like it’s heaven on earth.',
        author: 'Mark Twain'),
    Quote(
        text: 'People are just as happy as they make up their minds to be.',
        author: 'Abraham Lincoln'),
    Quote(
        text: 'The only impossible journey is the one you never begin.',
        author: 'ony Robbins'),
    Quote(text: 'Get busy living or get busy dying.', author: 'Stephen King'),
    Quote(
        text:
            'Insanity is doing the same thing over and over again and expecting different results.',
        author: 'Albert Einstein')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quotes')),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes.map((e) => QuoteCard(quote: e)).toList(),
          ),
        ),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  Quote quote;
  QuoteCard({required this.quote});

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
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                quote.author,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                //textAlign: TextAlign.end,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Quote {
  String text;
  String author;

  Quote({required this.text, required this.author});
}
