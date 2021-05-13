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
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          MyButton('第一季'),
          MyButton('第一季第一季'),
          MyButton('第一季'),
          MyButton('第一季第一季第一季'),
          MyButton('第一季'),
          MyButton('第一季'),
          MyButton('第一季'),
          MyButton('第一季'),
          MyButton('第一季'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  MyButton(this.text);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
