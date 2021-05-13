import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController typeController = TextEditingController();
  String showText = "欢迎来到美好人间高级会所";

  void _choiceAction() {
    print('开始选择你喜欢的类型......');

    if (this.typeController.text.toString() == '') {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text('美女类型不能为空')));
    } else {
      getHttp(this.typeController.text.toString()).then((value) {
        setState(() {
          showText = value['data']['name'].toString();
        });
      });
    }
  }

  Future getHttp(String TypeText) async {
    try {
      Response response;
      var data = {"name": TypeText};
      response = await Dio().get(
          "https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian",
          queryParameters: data);
      return response.data;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(title: Text('美好人间')),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  TextField(
                    controller: typeController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: '美女类型',
                        hintText: '请输入你喜欢的类型',
                        prefixIcon: Icon(Icons.spellcheck)),
                    autofocus: false,
                  ),
                  RaisedButton(
                    onPressed: this._choiceAction,
                    child: Text('选择完毕'),
                  ),
                  Text(
                    this.showText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
