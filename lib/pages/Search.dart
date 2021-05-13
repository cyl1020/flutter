import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final Map arguments;
  SearchPage({Key key, this.arguments}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState(arguments: this.arguments);
}

class _SearchPageState extends State<SearchPage> {
  Map arguments;
  _SearchPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Search')),
        body: Text(this.arguments['title']),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      )
    );
  }
}
