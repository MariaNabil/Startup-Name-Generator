import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

Widget savedSuggestionsPage(BuildContext context ,Set<WordPair> _saved){
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final Iterable<ListTile> tiles = _saved.map(
        (WordPair pair) {
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    },
  );
  final List<Widget> divided = ListTile
      .divideTiles(
    context: context,
    tiles: tiles,
  ).toList();

  return Scaffold(         // Add 6 lines from here...
    appBar: AppBar(
      title: Text('Saved Suggestions'),
    ),
    body: ListView(children: divided),
  );
}