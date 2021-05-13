import 'package:flutter/material.dart';
import 'package:flutter_cyl/pages/tabs/Add.dart';
import 'package:flutter_cyl/pages/tabs/People.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';
import 'tabs/Category.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _index = 0;
  _TabsState(number) {
    this._index = number;
  }

  List _pageList = [
    HomePage(),
    CategoryPage(),
    AddPage(),
    SettingPage(),
    PeoplePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('按钮');
              },
            )
          ],
        ),
        // floatingActionButton: Container(
        //   padding: EdgeInsets.all(6),
        //   margin: EdgeInsets.only(top: 16),
        //   width: 60.0,
        //   height: 60.0,
        //   // decoration: BoxDecoration(
        //   //   borderRadius: BorderRadius.circular(30),
        //   //   color: Colors.white
        //   // ),
        //   child: FloatingActionButton(
        //     child: Icon(Icons.add),
        //     onPressed: () {
        //       setState(() {
        //         this._index = 2;
        //       });
        //     },
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: this._pageList[this._index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 28.0,
          currentIndex: this._index,
          onTap: (int index) {
            setState(() {
              this._index = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: '添加'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: '中心'),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    // child: DrawerHeader(
                    //   decoration: BoxDecoration(
                    //     // color: Colors.yellow
                    //     image: DecorationImage(
                    //       image: NetworkImage('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2425901408,3958004732&fm=26&gp=0.jpg'),
                    //       fit: BoxFit.cover
                    //     )
                    //   ),

                    //   child: Text(''),
                    // ),
                    child: UserAccountsDrawerHeader(
                      accountName: Text('cyl'),
                      accountEmail: Text('2032441293@qq.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('images/a.jpeg'),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2425901408,3958004732&fm=26&gp=0.jpg'),
                              fit: BoxFit.cover)),
                      // otherAccountsPictures: [
                      //   Image.asset('images/a.jpeg')
                      // ],
                    ),
                  )
                ],
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.home)),
                title: Text('我的空间'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.people)),
                title: Text('用户中心'),
                onTap: () {
                  Navigator.of(context).pop(); //隐藏侧边栏
                  Navigator.pushNamed(context, '/login');
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text('设置中心'),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
