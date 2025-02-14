import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  final List<String> allQuotes = [
    'Flutter is amazing!',
    'Keep learning everyday.',
    'Practice makes perfect.',
    'Never stop exploring.',
    'Believe in yourself!',
  ];

  List<String> visibleQuotes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text("Nandini's Advices"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: visibleQuotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      visibleQuotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (visibleQuotes.length < allQuotes.length) {
            setState(() {
              visibleQuotes.add(allQuotes[visibleQuotes.length]);
            });
          }
        },
        backgroundColor: Colors.blue, // Blue add button
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Ensures it's in the bottom-right corner
    );
  }
}

class QuoteCard extends StatelessWidget {
  final String quote;
  final Function delete;

  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                quote,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            IconButton(
              onPressed: () => delete(),
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
