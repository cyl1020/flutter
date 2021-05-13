import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  AddPage({Key key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10), child: RadioDemo());
  }
}

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('男'),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              ),
              Text('女'),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              )
            ],
          ),
          Row(
            children: [Text(this.sex == 1 ? '男' : '女')],
          ),
          RadioListTile(
            value: 1,
            groupValue: this.sex,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是一个二级标题'),
            secondary: Icon(Icons.help),
            selected: this.sex == 1,
          ),
          RadioListTile(
            value: 2,
            groupValue: this.sex,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是一个二级标题'),
            secondary: Icon(Icons.help),
            selected: this.sex == 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: this.flag,
                onChanged: (value) {
                  setState(() {
                    this.flag = value;
                  });
                },
                activeColor: Colors.red,
              )
            ],
          ),
          RaisedButton(
              child: Text(
                '跳转到表单页面',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/formDemo');
              }),
          RaisedButton(
              child: Text(
                '跳转到时间页面',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/date');
              }),
          RaisedButton(
              child: Text(
                '跳转到轮播图页面',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/swiper');
              }),
          RaisedButton(
              child: Text(
                '跳转到获取数据页面',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/data');
              })
        ],
      ),
    );
  }
}

class CheckedBox extends StatefulWidget {
  CheckedBox({Key key}) : super(key: key);

  @override
  _CheckedBoxState createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBox> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: [
          Checkbox(
            value: this.flag,
            // checkColor: Colors.red,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                this.flag = !this.flag;
              });
            },
          ),
          Text(this.flag ? '选中' : '未选中')
        ]),
        SizedBox(
          height: 40,
        ),
        CheckboxListTile(
          value: this.flag,
          onChanged: (value) {
            setState(() {
              this.flag = value;
            });
          },
          title: Text('标题'),
          subtitle: Text('这是一个二级标题'),
        )
      ],
    ));
  }
}

class GetInput extends StatefulWidget {
  GetInput({Key key}) : super(key: key);

  @override
  _GetInputState createState() => _GetInputState();
}

class _GetInputState extends State<GetInput> {
  var username = new TextEditingController(); //初始化的时候给表单赋值
  var password;
  @override
  void initState() {
    super.initState();
    this.username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextField(
          controller: this.username,
          decoration: InputDecoration(hintText: '请输入用户名'),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          obscureText: true,
          // controller: this.password,
          decoration: InputDecoration(hintText: '请输入密码'),
          onChanged: (value) {
            this.password = value;
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: RaisedButton(
              child: Text('登录'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                print(this.username.text);
                print(this.password);
              }),
        )
      ],
    ));
  }
}

class InputDemo extends StatelessWidget {
  const InputDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '请输入搜索的内容',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: '多行输入框',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: '密码框',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '用户名', labelText: '用户名', icon: Icon(Icons.people)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: '密码框', labelText: '密码框', icon: Icon(Icons.people)),
          )
        ],
      ),
    );
  }
}
