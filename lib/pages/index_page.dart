import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/cart/cart_page.dart';
import 'package:flutter_shop/pages/category/category_page.dart';
import 'package:flutter_shop/pages/home/home_page.dart';
import 'package:flutter_shop/pages/member/member_page.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  //底部tab栏的配置
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home), 
      label: '首页'
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search), 
      label: '分类'
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart), 
      label: '购物车'
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled), 
      label: '会员中心'
    )
  ];

  //底部tab栏对应的页面
  final List tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];

  int currentIndex = 0; //当前的index值(利用这个值可以选中对应的页面)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        items: this.bottomTabs, 
        type: BottomNavigationBarType.fixed,
        currentIndex: this.currentIndex,
        onTap: (index){
          setState(() {
            this.currentIndex = index;
          });
        },
      ),
      body: this.tabBodies[this.currentIndex]
      // body:IndexedStack(
      //     index: this.currentIndex,
      //     children: tabBodies
      // ),
    );
  }
}
