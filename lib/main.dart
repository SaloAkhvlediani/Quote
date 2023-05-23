import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List<String> quotes=[
  //       'With our sentence examples, seeing a word within the',
  //       'context of a sentence helps you better understand it',
  //       'and know how to use it correctly. From long to short'
  //
  // ];
  List<Quote> quotes = [
    Quote(text: '1xjc ascsc sSV', author: '1salome'),
    Quote(text: '2xjc ascsc sSV', author: '2salome'),
    Quote(text: '3xjc ascsc sSV', author: '3salome'),
  ];

  // Widget quoteTemplate(quote) {
  //    return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesaome Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // children: quotes.map((quote) {
        //   return Text(quote);
        // }).toList(),
        //children: quotes.map((qoute) => Text(' text: ${qoute.text} -- author: ${qoute.author}')).toList(),
        //children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        children: quotes.map((quote)=> QuoteCard(
            quote: quote,
          delete:() {
              setState(() {
                quotes.remove(quote);
              });
          },
        )).toList(),
      ),
    );
  }
}


