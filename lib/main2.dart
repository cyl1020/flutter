import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Cyl flutter')),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (num i = 1; i <= 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        color: Colors.red,
        height: 400, //设置高度没有反应
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisSpacing: 10.0, //侧轴的间隔
    //   mainAxisSpacing: 10.0, //主轴的间隔
    //   childAspectRatio: 0.6, //宽度和高度的比例
    //   padding: EdgeInsets.all(10),
    //   crossAxisCount: 2,
    //   children: this._getData(),
    // );
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10.0, //侧轴的间隔
            mainAxisSpacing: 10.0, //主轴的间隔
            crossAxisCount: 2),
        itemCount: this._getData().length,
        itemBuilder: (content, index) {
          return this._getData()[index];
        });
  }
}
