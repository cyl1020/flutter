import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Demo(),
      ),
    );
  }
}

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  var username;
  int sex = 1;
  String info;
  List hobbys = [
    {"checked": true, "title": "吃饭"},
    {"checked": false, "title": "睡觉"},
    {"checked": true, "title": "写代码"}
  ];

  List<Widget> _getHobbys() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobbys.length; i++) {
      tempList.addAll([
        Text(this.hobbys[i]["title"]),
        Checkbox(
          value: this.hobbys[i]["checked"],
          onChanged: (value) {
            setState(() {
              this.hobbys[i]["checked"] = value;
            });
          },
        )
      ]);
    }
    return tempList;
  }

  void _sexChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(hintText: '输入用户姓名'),
          onChanged: (value) {
            setState(() {
              this.username = value;
            });
          },
        ),
        Row(
          children: [
            Text('男'),
            Radio(value: 1, groupValue: this.sex, onChanged: this._sexChanged),
            SizedBox(
              width: 20.0,
            ),
            Text('女'),
            Radio(
              value: 2,
              groupValue: this.sex,
              onChanged: this._sexChanged,
            )
          ],
        ),
        Row(children: this._getHobbys()),
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: '描述信息',
            border: OutlineInputBorder()
          ),
          onChanged: (value) {
            setState(() {
              this.info = value;
            });
          },
        ),
        RaisedButton(
            child: Text('提交'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              print(this.username);
              print(this.sex);
              print(this.hobbys);
              print(this.info);
            })
      ],
    );
  }
}
