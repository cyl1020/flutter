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
    return Center(
      child: Container(
        height: 400.0,
        width: 300.0,
        color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              top: 10.0,
              left: 20.0,
              child: Icon(
                Icons.home,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.search,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.select_all,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      )
    );
  }
}

class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment(0, 0),
        children: [
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.pink,
          ),
          Text(
            '我是一个文本1',
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ],
      ),
    );
  }
}
