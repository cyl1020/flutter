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
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (num i = 1; i <= 20; i++) {
      list.add(Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.pink, width: 1.0),
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('images/a.jpeg')
                      )),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('钟谊楷傻逼$i'),
              )
            ],
          )));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.5),
        itemCount: this._getData().length,
        itemBuilder: (content, index) {
          return this._getData()[index];
        });
  }
}
