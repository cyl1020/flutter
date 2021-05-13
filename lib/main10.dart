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

// class HomeContent extends StatefulWidget {
//   HomeContent({Key key}) : super(key: key);

//   @override
//   _HomeContentState createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           SizedBox(height: 200),
//           Text('$count'),
//           RaisedButton(
//               child: Icon(Icons.add, color: Colors.blue,),
//               onPressed: () {
//                 setState(() {
//                   this.count++;
//                 });
//               })
//         ],
//       ),
//     );
//   }
// }

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: this.list.map((item) {
              return ListTile(title: Text(item));
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  this.list.add('你好');
                });
              }),
          RaisedButton(
              child: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  this.list.remove('你好');
                });
              })
        ],
      ),
    );
  }
}
