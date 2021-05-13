import 'dart:async';

import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeContent(),
    );
  }
}

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
              }),
          RaisedButton(
              child: Text('跳转到登录界面'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }),
          RaisedButton(
              child: Text('跳转到注册界面'),
              onPressed: () {
                Navigator.pushNamed(context, '/registerFirst');
              }),
          DialogPage()
        ],
      ),
    );
  }
}

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定要删除吗?'),
            actions: [
              FlatButton(
                  onPressed: () {
                    print('取消');
                    Navigator.pop(context, 'Cancle');
                  },
                  child: Text('取消')),
              FlatButton(
                  onPressed: () {
                    print('确定');
                    Navigator.pop(context, 'ok');
                  },
                  child: Text('确定'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RaisedButton(child: Text('弹出框1'), onPressed: _alertDialog),
          RaisedButton(
              child: Text('弹出框2'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return MyDialog(title: '关于我们', content: '我是内容');
                    });
              }),
        ],
      ),
    );
  }
}

class MyDialog extends Dialog {
  String title;
  String content;

  MyDialog({this.title = "默认标题", this.content = "默认内容"});

  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      Navigator.pop(context);
      t.cancel(); //取消定时器
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                // child: Container(
                //   // decoration: BoxDecoration(
                //   //     border: Border.all(width: 2, color: Colors.white),
                //   //     borderRadius: BorderRadius.circular(10)),
                //   width: 200,
                //   height: 200,
                //   color: Colors.white,
                // ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(this.title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  this.content,
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
