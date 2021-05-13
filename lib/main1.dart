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
//     return Center(
//       child: Container(
//         child: Text(
//           '钟谊楷傻逼',
//           textAlign: TextAlign.center,
//           maxLines: 2,
//           textScaleFactor: 2,
//           style: TextStyle(
//               color: Colors.red,
//               fontSize: 20.0,
//               fontStyle: FontStyle.italic,
//               decoration: TextDecoration.lineThrough,
//               decorationColor: Colors.white,
//               decorationStyle: TextDecorationStyle.dotted,
//               letterSpacing: 5.0),
//         ),
//         height: 100.0,
//         width: 300.0,
//         decoration: BoxDecoration(
//             color: Colors.yellow,
//             border: Border.all(color: Colors.blue, width: 2.0),
//             borderRadius: BorderRadius.all(
//               Radius.circular(50.0),
//             )),
//         // padding: EdgeInsets.all(20),
//         // transform: Matrix4.diagonal3Values(1.2, 1, 1),
//         alignment: Alignment.center,
//       )
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         decoration: BoxDecoration(
//             // color: Colors.red,
//             borderRadius: BorderRadius.circular(150),
//             image: DecorationImage(
//                 image: NetworkImage(
//                     'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1689053532,4230915864&fm=26&gp=0.jpg'),
//                 fit: BoxFit.cover)),
//         width: 300,
//         height: 300,
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         // child: ClipOval(
//         //   child: Image.network(
//         //     'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1689053532,4230915864&fm=26&gp=0.jpg',
//         //     width: 300,
//         //     height: 300,
//         //     fit: BoxFit.cover,
//         //   ),
//         // ),
//         child: Image.asset('images/a.jpeg'),
//         width: 300,
//         height: 300,
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           leading: Icon(Icons.ac_unit, color: Colors.blue,),
//           title: Text('钟谊楷', style: TextStyle(color: Colors.red, fontSize: 40.0)),
//           subtitle: Text('钟谊楷真的就是一个傻逼'),
//           trailing: Icon(Icons.settings),
//         ),
//         ListTile(
//           title: Text('aaa'),
//           subtitle: Text('bbbbbbbbbbb'),
//         ),
//         ListTile(
//           title: Text('aaa'),
//           subtitle: Text('bbbbbbbbbbb'),
//         ),
//         ListTile(
//           title: Text('aaa'),
//           subtitle: Text('bbbbbbbbbbb'),
//         )
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.all(10),
//       children: [
//         Image.asset('images/a.jpeg'),
//         Container(
//           child: Text(
//             '我是一个标题',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.red,
//               fontSize: 18.0
//             ),
//           ),
//           height: 40.0,
//         ),
//         Image.asset('images/a.jpeg'),
//         Image.asset('images/a.jpeg'),
//         Image.asset('images/a.jpeg'),
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           Container(
//             width: 180.0,
//             height: 180.0,
//             color: Colors.blueAccent,
//           ),
//           Container(
//             width: 180.0,
//             height: 180.0,
//             color: Colors.blueGrey,
//           ),
//           Container(
//             width: 180.0,
//             child: ListView(
//               children: [
//                 Image.asset('images/a.jpeg'),
//                 Image.asset('images/a.jpeg'),
//                 Image.asset('images/a.jpeg'),
//               ],
//             ),
//           ),
//           Container(
//             height: 180.0,
//             width: 180.0,
//             color: Colors.redAccent,
//           ),
//           Container(
//             height: 180.0,
//             width: 180.0,
//             color: Colors.cyanAccent,
//           ),
//           Container(
//             height: 180.0,
//             width: 180.0,
//             color: Colors.limeAccent,
//           )
//         ],
//       ),
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  //getData(静态)需要返回一个list列表组件
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (num i = 1; i <= 20; i++) {
      list.add(ListTile(
        title: Text('我是第$i个列表'),
      ));
    }
    return list;
  }

  //自定义方法
  // List<Widget> _getData() {
  //   return [
  //     ListTile(
  //       title: Text('我是一个列表'),
  //     ),
  //     ListTile(
  //       title: Text('我是一个列表'),
  //     ),
  //     ListTile(
  //       title: Text('我是一个列表'),
  //     ),
  //   ];
  // }
  List list = new List();

  HomeContent() {
    for (num i = 1; i <= 20; i++) {
      this.list.add(ListTile(
            title: Text('我是第$i个列表'),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //  children: this._getData()
    // );
    return ListView.builder(
        itemCount: this.list.length,
        itemBuilder: (content, index) {
          return this.list[index];
        });
  }
}
