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
    return Column(children: [
      Row(
        children: [
          Expanded(
            child: Container(
              height: 200.0,
              color: Colors.blue,
              child: Text('你好flutter'),
            ),
          )
        ],
      ),
      SizedBox(height: 10.0),
      Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                height: 180.0,
                child: Image.asset(
                  'images/a.jpeg',
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(width: 10.0),
          Expanded(
              flex: 1,
              child: Container(
                  height: 180.0,
                  child: ListView(
                    children: [
                      Container(
                        height: 85.0,
                        child: Image.asset('images/a.jpeg', fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 85.0,
                        child: Image.asset('images/a.jpeg', fit: BoxFit.cover),
                      )
                    ],
                  ))),
        ],
      )
    ]);
  }
}
