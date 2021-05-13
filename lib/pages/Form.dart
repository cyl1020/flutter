import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final arguments;
  FormPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.blue,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: '热门',
                ),
                Tab(
                  text: '推荐',
                )
              ],
            ),
            backgroundColor: Colors.red,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {
            //     print('123');
            //   },
            // ),
            // actions: [
            //   IconButton(
            //     icon: Icon(Icons.search),
            //     onPressed: () {
            //       print('search');
            //     },
            //   ),
            //   IconButton(
            //     icon: Icon(Icons.settings),
            //     onPressed: () {
            //       print('search');
            //     },
            //   )
            // ],
          ),
          body: TabBarView(children: [
            ListView(
              children: [
                ListTile(
                  title: Text('${this.arguments["id"]}'),
                ),
                ListTile(
                  title: Text('我是表单页面'),
                ),
                ListTile(
                  title: Text('我是表单页面'),
                ),
                ListTile(
                  title: Text('我是表单页面'),
                ),
                ListTile(
                  title: Text('我是表单页面'),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text('${this.arguments["id"]}'),
                ),
                ListTile(
                  title: Text('我是表单页面'),
                ),
                ListTile(
                  title: Text('我是表单页面'),
                ),
                ListTile(
                  title: Text('我是表单页面'),
                ),
                ListTile(
                  title: Text('我是表单页面'),
                ),
              ],
            )
          ]),
          floatingActionButton: FloatingActionButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ));
  }
}
