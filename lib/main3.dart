import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/a.jpeg', fit: BoxFit.cover)),
        ],
      )
    );
  }
}
