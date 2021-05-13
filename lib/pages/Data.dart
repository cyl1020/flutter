import 'package:flutter/material.dart';

import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  List list = [];

  @override
  void initState() {
    super.initState();
    this._getData();
  }

  //请求数据
  // _getData() async {
  //   var url = 'http://a.itying.com/api/productlist';
  //   var result = await http.get(url);
  //   if (result.statusCode == 200) {
  //     setState(() {
  //       this.list = convert.jsonDecode(result.body)["result"];
  //     });
  //   } else {
  //     print('获取数据失败');
  //   }
  // }

  _getData() async {
    var url =
        'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';
    var dio = Dio();
    Response response = await dio.get(url);
    // print(response.data);

    setState(() {
      this.list = convert.jsonDecode(response.data)["result"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('获取数据')),
        // body: this.list.length > 0 ? ListView(
        //   children: this.list.map((e) {
        //     return ListTile(
        //       title: Text(e["title"]),
        //     );
        //   }).toList(),
        // ) : Text('加载中...')
        // body: this.list.length > 0
        //     ? ListView.builder(itemBuilder: (context, int index) {
        //       return ListTile(
        //         title: Text(this.list[index]["title"]),
        //       );
        //     }, itemCount: this.list.length,)
        //     : Text('加载中...'));
        body: this.list.length > 0
            ? ListView.builder(
                itemBuilder: (context, int index) {
                  return ListTile(
                    title: Text(this.list[index]["title"]),
                    subtitle: Text(this.list[index]["username"]),
                    
                  );
                },
                itemCount: this.list.length,
              )
            : Text('加载中...'));
  }
}
