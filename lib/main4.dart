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
        body: LayoutDemo(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: Row(
        children: [
          Expanded(
            child: IconContainer(Icons.home),
            flex: 1,
          ),
          Expanded(
            child: IconContainer(Icons.settings),
            flex: 2,
          ),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  IconData icon;
  IconContainer(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
      child: Center(
        child: Icon(
          this.icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
