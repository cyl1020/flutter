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

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200.0,
//       child: AspectRatio(
//         aspectRatio: 2.0 / 1.0, //子元素的宽高比是2比1，即宽度为200，高度为100（AspectRatio组件会尽可能的铺满）
//         child: Container(
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Card(
//           margin: EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               ListTile(
//                 leading: Icon(Icons.supervised_user_circle),
//                 title: Text(
//                   '张三',
//                   style: TextStyle(fontSize: 28.0),
//                 ),
//                 subtitle: Text('高级前端工程师'),
//               ),
//               ListTile(
//                 title: Text('电话：xxxxxx'),
//               ),
//               ListTile(
//                 title: Text('地址：四川省成都市'),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               ListTile(
//                 leading: Icon(Icons.supervised_user_circle),
//                 title: Text(
//                   '李四',
//                   style: TextStyle(fontSize: 28.0),
//                 ),
//                 subtitle: Text('高级前端工程师'),
//               ),
//               ListTile(
//                 title: Text('电话：xxxxxx'),
//               ),
//               ListTile(
//                 title: Text('地址：四川省眉山市'),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 2 / 1.5,
                child: Image.asset('images/a.jpeg', fit: BoxFit.cover),
              ),
              ListTile(
                // leading: ClipOval(
                //     child: Image.asset('images/a.jpeg',
                //         fit: BoxFit.cover,
                //         width: 60.0,
                //         height: 60.0)
                //     ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/a.jpeg'),
                ),
                title: Text('Shop'),
                subtitle: Text('你值得拥有'),
              )
            ],
          )),
    ]);
  }
}
